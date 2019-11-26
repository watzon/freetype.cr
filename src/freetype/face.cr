module Freetype
  class Face

    getter library : Library
    getter face : LibFreetype::FT_Face

    def initialize(filename : String | IO, index : Number = 0)
      face = Pointer(LibFreetype::FT_Face).malloc
      library = Freetype.get_handle

      if filename.is_a?(String)
        error = Face.face_from_file(library, face, index, filename)
      else
        error = Face.face_from_memory(library, face, index, filename)
      end

      raise "Failed to load font at path '#{filename}'" if error > 0

      @library = Library.new(library)
      @face = face.value
    end

    # Attach data to a face object. Normally, this is used to read
    # additional information for the face object. For example, you can attach
    # an AFM file that comes with a Type 1 font to get the kerning values and
    # other metrics.
    def attach_file(filename : String)
      LibFreetype.FT_Attach_File(@face, filename)
    end

    # This function calls FT_Request_Size to request the nominal size (in points).
    #
    # **Note**
    #
    # If either the character width or height is zero, it is set equal to the
    # other value.
    #
    # If either the horizontal or vertical resolution is zero, it is set
    # equal to the other value.
    #
    # A character width or height smaller than 1pt is set to 1pt; if both
    # resolution values are zero, they are set to 72dpi.
    def set_char_size(width = 0, height = 0, hres = 72, vres = 72)
      error = LibFreetype.FT_Set_Char_Size(@face, width, height, hres, vres)
      raise Error.new(error) if error > 0
    end

    # This function calls FT_Request_Size to request the nominal size (in pixels).
    def set_pixel_sizes(width, height)
      error = LibFreetype.FT_Set_Pixel_Sizes(@face, width, height)
      raise Error.new(error) if error > 0
    end

    # Select a given charmap by its encoding tag (as listed in 'freetype.h').
    #
    # **Note**:
    #
    # This function returns an error if no charmap in the face corresponds to
    # the encoding queried here.
    #
    # Because many fonts contain more than a single cmap for Unicode
    # encoding, this function has some special code to select the one which
    # covers Unicode best ('best' in the sense that a UCS-4 cmap is preferred
    # to a UCS-2 cmap). It is thus preferable to FT_Set_Charmap in this case.
    def select_charmap(encoding : LibFreetype::FT_Encoding)
      error = LibFreetype.FT_Select_Charmap(@face, encoding)
      raise Error.new(error) if error > 0
    end

    # Select a given charmap for character code to glyph index mapping.
    def set_charmap(charmap)
      if charmap.is_a?(Charmap)
        error = LibFreetype.FT_Set_Charmap(@face, charmap.charmap)
      elsif charmap.is_a?(LibFreetype::FT_CharMap)
        error = LibFreetype.FT_Set_Charmap(@face, charmap)
      else
        error = LibFreetype.FT_Set_Charmap(@face, @face.value.charmaps[charmap])
      end
      # Type 14 is allowed to fail, to match ft2demo's behavior.
      error = 0 if charmap.cmap_format == 14

      raise Error.new(error) if error > 0
    end

    # Return the glyph index of a given character code. This function uses a
    # charmap object to do the mapping.
    #
    # **Note**:
    #
    # If you use FreeType to manipulate the contents of font files directly,
    # be aware that the glyph index returned by this function doesn't always
    # correspond to the internal indices used within the file. This is done
    # to ensure that value 0 always corresponds to the 'missing glyph'.
    def char_index(char : Char | Int)
      charcode = char.is_a?(Char) ? char.ord : char
      LibFreetype.FT_Get_Char_Index(@face, charcode).to_i
    end

    # This function is used to return the glyph name for the given char.
    def glyph_name(index : Char | Int, max_bytes = 64)
      index = index.is_a?(Char) ? get_char_index(index) : index
      buff = Slice(UInt8).new(max_bytes)
      error = LibFreetype.FT_Get_Glyph_Name(@face, index, buff, max_bytes)
      raise "Error getting glyph name for char at index #{index}" if error > 0
      String.new(buff)
    end

    # Returns all unicode character codes in the current charmap of a given face.
    # For each character it also returns the corresponding glyph index.
    def chars
      chars = [] of Tuple(Int32, UInt32)
      charcode, index = first_char
      chars << {charcode, index}
      while index != 0
        charcode, index = next_char(charcode, 0_u32)
        chars << {charcode, index}
      end
      chars
    end

    # This function is used to return the first character code in the current
    # charmap of a given face. It also returns the corresponding glyph index.
    # Returns the glyph index of first character code. 0 if charmap is empty.
    #
    # **Note**:
    #
    #   You should use this function with get_next_char to be able to parse
    #   all character codes available in a given charmap. The code should look
    #   like this:
    #
    #   Note that 'agindex' is set to 0 if the charmap is empty. The result
    #   itself can be 0 in two cases: if the charmap is empty or if the value 0
    #   is the first valid character code.
    def first_char
      agindex = Pointer(UInt32).malloc
      charcode = LibFreetype.FT_Get_First_Char(@face, agindex)
      {charcode, agindex.value}
    end

    # This function is used to return the next character code in the current
    # charmap of a given face following the value 'charcode', as well as the
    # corresponding glyph index.
    #
    # **Note**:
    #
    #   You should use this function with FT_Get_First_Char to walk over all
    #   character codes available in a given charmap. See the note for this
    #   function for a simple code example.
    #   Note that 'agindex' is set to 0 when there are no more codes in the
    #   charmap.
    def next_char(charcode, agindex)
      indexptr = pointerof(agindex)
      charcode = LibFreetype.FT_Get_Next_Char(@face, charcode, indexptr)
      {charcode, indexptr.value}
    end

    # Return the glyph index of a given glyph name. This function uses driver
    # specific objects to do the translation.
    def name_index(name : String)
      LibFreetype.FT_Get_Name_Index(@face, name)
    end

    # A function used to set the transformation that is applied to glyph
    # images when they are loaded into a glyph slot through FT_Load_Glyph.
    #
    # **Note**:
    #
    #   The transformation is only applied to scalable image formats after the
    #   glyph has been loaded. It means that hinting is unaltered by the
    #   transformation and is performed on the character size given in the last
    #   call to FT_Set_Char_Size or FT_Set_Pixel_Sizes.
    #
    #   Note that this also transforms the 'face.glyph.advance' field, but
    #   not the values in 'face.glyph.metrics'.
    def set_transform(matrix, delta)
      LibFreetype.FT_Set_Transform(@face, pointerof(matrix), pointerof(delta))
    end

    # Select a bitmap strike.
    def select_size(strike_index)
      error = LibFreetype.FT_Select_Size(@face, strike_index)
      raise Error.new(error) if error > 0
    end

    # A function used to load a single glyph into the glyph slot of a face
    # object.
    #
    # **Note**:
    #
    #   The loaded glyph may be transformed. See FT_Set_Transform for the
    #   details.
    #
    #   For subsetted CID-keyed fonts, 'FT_Err_Invalid_Argument' is returned
    #   for invalid CID values (this is, for CID values which don't have a
    #   corresponding glyph in the font). See the discussion of the
    #   FT_FACE_FLAG_CID_KEYED flag for more details.
    def load_glyph(index, flags = LibFreetype::FT_LOAD_RENDER)
      error = LibFreetype.FT_Load_Glyph(@face, index, flags)
      raise Error.new(error) if error > 0
    end

    # A function used to load a single glyph into the glyph slot of a face
    # object, according to its character code.
    #
    # **Note**:
    #
    #   This function simply calls FT_Get_Char_Index and FT_Load_Glyph.
    def load_char(char, flags = LibFreetype::FT_LOAD_RENDER)
      charcode = char.is_a?(Char) ? char.ord : char
      error = LibFreetype.FT_Load_Char(@face, charcode, flags)
      raise Error.new(error) if error > 0
    end

    # Retrieve the advance value of a given glyph outline in an FT_Face. By
    # default, the unhinted advance is returned in font units.
    #
    # **Note**
    #          advance corresponding to a vertical layout. Otherwise, it is
    #          the horizontal advance in a horizontal layout.
    def advance(gindex, flags)
      padvance = Pointer(Int64).malloc
      error = LibFreetype.FT_Get_Advance(@face, gindex, flags, padvance)
      raise Error.new(error) if error > 0
      padvance.value
    end

    # Return the kerning vector between two glyphs of a same face.
    #
    # **Note**:
    #
    #   Only horizontal layouts (left-to-right & right-to-left) are supported
    #   by this method. Other layouts, or more sophisticated kernings, are out
    #   of the scope of this API function -- they can be implemented through
    #   format-specific interfaces.
    def kerning(left, right, mode = LibFreetype::FT_Kerning_Mode::FT_KERNING_DEFAULT)
      left_glyph = get_char_index(left)
      right_glyph = get_char_index(right)
      kerning = Pointer(LibFreetype::FT_Vector).malloc
      error = LibFreetype.FT_Get_Kerning(@face, left_glyph, right_glyph, mode, kerning)
      raise Error.new(error) if error > 0
      kerning.value
    end

    # Return a string describing the format of a given face, using values
    # which can be used as an X11 FONT_PROPERTY. Possible values are
    # 'TrueType', 'Type 1', 'BDF', ‘PCF', ‘Type 42', ‘CID Type 1', ‘CFF',
    # 'PFR', and ‘Windows FNT'.
    def format
      ptr = LibFreetype.FT_Get_Font_Format(@face)
      String.new(ptr)
    end

    # Return the fsType flags for a font (embedding permissions).
    #
    # The return value is a tuple containing the freetype enum name
    # as a string and the actual flag as an int
    def fstype
      flag = LibFreetype.FT_Get_FSType_Flags(@face)
      LibFreetype::FT_FSTYPE_XXX.each do |k, v|
        return {k, v} if v == flag
      end
    end

    # Number of name strings in the SFNT 'name' table.
    def sfnt_name_count
      LibFreetype.FT_Get_Sfnt_Name_Count(@face)
    end

    # Retrieve a string of the SFNT 'name' table for a given index
    #
    # **Note**:
    #
    #   The 'string' array returned in the 'aname' structure is not
    #   null-terminated. The application should deallocate it if it is no
    #   longer in use.
    #
    #   Use FT_Get_Sfnt_Name_Count to get the total number of available
    #   'name' table entries, then do a loop until you get the right
    #   platform, encoding, and name ID.
    def sfnt_name(index)
      name = Pointer(LibFreetype::FT_SfntName).malloc
      error = LibFreetype.FT_Get_Sfnt_Name(@face, index, name)
      raise Error.new(error) if error > 0
      SfntName.new(name.value)
    end

    def postscript_name
      ptr = LibFreetype.FT_Get_Postscript_Name(@face)
      String.new(ptr)
    end

    # True whenever a face object contains horizontal metrics
    # (this is true for all font formats though).
    def has_horizontal?
      !!(face_flags & LibFreetype::FT_FACE_FLAG_HORIZONTAL)
    end

    # True whenever a face object contains vertical metrics.
    def has_vertical?
      !!(face_flags & LibFreetype::FT_FACE_FLAG_VERTICAL)
    end

    # True whenever a face object contains kerning data that can
    # be accessed with FT_Get_Kerning.
    def has_kerning?
      !!(face_flags & LibFreetype::FT_FACE_FLAG_KERNING)
    end

    # True whenever a face object contains a scalable font face
    # (true for TrueType, Type 1, Type 42, CID, OpenType/CFF,
    # and PFR font formats.
    def scalable?
      !!(face_flags & LibFreetype::FT_FACE_FLAG_SCALABLE)
    end

    # True whenever a face object contains a font whose format is
    # based on the SFNT storage scheme. This usually means: TrueType
    # fonts, OpenType fonts, as well as SFNT-based embedded bitmap
    # fonts.
    #
    # If this macro is true, all functions defined in
    # FT_SFNT_NAMES_H and FT_TRUETYPE_TABLES_H are available.
    def sfnt?
      !!(face_flags & LibFreetype::FT_FACE_FLAG_SFNT)
    end

    # True whenever a face object contains a font face that
    # contains fixed-width (or 'monospace', 'fixed-pitch',
    # etc.) glyphs.
    def fixed_width?
      !!(face_flags & LibFreetype::FT_FACE_FLAG_FIXED_WIDTH)
    end

    # True whenever a face object contains some embedded
    # bitmaps. See the 'available_sizes' field of the FT_FaceRec
    # structure.
    def has_fixed_sizes?
      !!(face_flags & LibFreetype::FT_FACE_FLAG_FIXED_SIZES)
    end

    # True whenever a face object contains some glyph names
    # that can be accessed through FT_Get_Glyph_Name.
    def has_glyph_names?
      !!(face_flags & LibFreetype::FT_FACE_FLAG_GLYPH_NAMES )
    end

    # True whenever a face object contains some
    # multiple masters. The functions provided by
    # FT_MULTIPLE_MASTERS_H are then available to
    # choose the exact design you want.''')
    def has_multiple_masters?
      !!(face_flags & LibFreetype::FT_FACE_FLAG_MULTIPLE_MASTERS )
    end

    # True whenever a face object contains a CID-keyed
    # font. See the discussion of FT_FACE_FLAG_CID_KEYED for
    # more details.
    #
    # If this macro is true, all functions defined in FT_CID_H
    # are available.
    def cid_keyed?
      !!(face_flags & LibFreetype::FT_FACE_FLAG_CID_KEYED)
    end

    # True whenever a face represents a 'tricky' font. See the
    # discussion of FT_FACE_FLAG_TRICKY for more details.
    def tricky?
      !!(face_flags & LibFreetype::FT_FACE_FLAG_TRICKY)
    end

    # The number of faces in the font file. Some font formats can
    # have multiple faces in a font file.
    def num_faces
      @face.value.num_faces
    end

    # The number of faces in the font file. Some font formats can
    # have multiple faces in a font file.
    def face_index
      @face.value.face_index
    end

    # A set of bit flags that give important information about
    # the face; see FT_FACE_FLAG_XXX for the details.
    def face_flags
      @face.value.face_flags
    end

    # A set of bit flags indicating the style of the face; see
    # FT_STYLE_FLAG_XXX for the details.
    def style_flags
      @face.value.style_flags
    end

    # The number of glyphs in the face. If the face is scalable
    # and has sbits (see `num_fixed_sizes`), it is set to the number of
    # outline glyphs.
    #
    # For CID-keyed fonts, this value gives the highest CID used in the
    # font.
    def num_glyphs
      @face.value.num_glyphs
    end

    # The face's family name. This is an ASCII string, usually
    # in English, which describes the typeface's family (like
    # 'Times New Roman', 'Bodoni', 'Garamond', etc). This is a
    # least common denominator used to list fonts. Some formats
    # (TrueType & OpenType) provide localized and Unicode
    # versions of this string. Applications should use the
    # format specific interface to access them. Can be NULL
    # (e.g., in fonts embedded in a PDF file).
    def family_name
      String.new(@face.value.family_name)
    end

    # The face's style name. This is an ASCII string, usually in
    # English, which describes the typeface's style (like
    # 'Italic', 'Bold', 'Condensed', etc). Not all font formats
    # provide a style name, so this field is optional, and can be
    # set to NULL. As for 'family_name', some formats provide
    # localized and Unicode versions of this string. Applications
    # should use the format specific interface to access them.
    def style_name
      String.new(@face.value.style_name)
    end

    # The number of bitmap strikes in the face. Even if the
    # face is scalable, there might still be bitmap strikes,
    # which are called 'sbits' in that case.
    def num_fixed_sizes
      @face.value.num_fixed_sizes
    end

    # A list of FT_Bitmap_Size for all bitmap strikes in the
    # face. It is set to NULL if there is no bitmap strike.
    def available_sizes
      n = num_fixed_sizes
      ft_sizes = @face.value.available_sizes
      Array(BitmapSize).new(n) do |i|
        BitmapSize.new(ft_sizes[i])
      end
    end

    def num_charmaps
      @face.value.num_charmaps
    end

    # A list of the charmaps of the face.
    def charmaps
      n = num_charmaps
      ft_charmaps = @face.value.charmaps
      Array(Charmap).new(n) do |i|
        Charmap.new(ft_charmaps[i])
      end
    end

    # The font bounding box. Coordinates are expressed in font units
    # (see `units_per_em`). The box is large enough to contain any
    # glyph from the font. Thus, 'bbox.yMax' can be seen as the
    # 'maximal ascender', and 'bbox.yMin' as the 'minimal
    # descender'. Only relevant for scalable formats.
    #
    # Note that the bounding box might be off by (at least) one pixel
    # for hinted fonts. See FT_Size_Metrics for further discussion.
    def bbox
      BBox.new(@face.value.bbox)
    end

    # The number of font units per EM square for this
    # face. This is typically 2048 for TrueType fonts, and 1000
    # for Type 1 fonts. Only relevant for scalable formats.
    def units_per_em
      @face.value.units_per_EM
    end

    # The typographic ascender of the face, expressed in font
    # units. For font formats not having this information, it is
    # set to 'bbox.yMax'. Only relevant for scalable formats.
    def ascender
      @face.value.ascender
    end

    # The typographic descender of the face, expressed in font
    # units. For font formats not having this information, it is
    # set to 'bbox.yMin'. Note that this field is usually
    # negative. Only relevant for scalable formats.
    def descender
      @face.value.descender
    end

    # The height is the vertical distance between two consecutive
    # baselines, expressed in font units. It is always positive. Only
    # relevant for scalable formats.
    def height
      @face.value.height
    end

    # The maximal advance width, in font units, for all
    # glyphs in this face. This can be used to make word
    # wrapping computations faster. Only relevant for
    # scalable formats.
    def max_advance_width
      @face.value.max_advance_width
    end

    # The maximal advance height, in font units, for all
    # glyphs in this face. This is only relevant for
    # vertical layouts, and is set to 'height' for fonts
    # that do not provide vertical metrics. Only relevant
    # for scalable formats.
    def max_advance_height
      @face.value.max_advance_height
    end

    # The position, in font units, of the underline line
    # for this face. It is the center of the underlining
    # stem. Only relevant for scalable formats.
    def underline_position
      @face.value.underline_position
    end

    # The thickness, in font units, of the underline for
    # this face. Only relevant for scalable formats.
    def underline_thickness
      @face.value.underline_thickness
    end

    # The face's associated glyph slot(s).
    def glyph
      glyph = @face.value.glyph
      pp glyph.value
      GlyphSlot.new(glyph)
    end

    # The current active size for this face.
    def size
      size = @face.value.size
      metrics = size.value.metrics
      SizeMetrics.new(metrics)
    end

    # The current active charmap for this face.
    def charmap
      charmap = @face.value.charmap
      Charmap.new(charmap)
    end

    def finalize
      LibFreetype.FT_Done_Face(@face)
    end

    def self.face_from_memory(library, face, index, io)
      bytes = io.to_slice
      LibFreetype.FT_New_Memory_Face(library, pointerof(bytes), index.to_i64, face)
    end

    def self.face_from_file(library, face, index, path)
      LibFreetype.FT_New_Face(library, path, index.to_i64, face)
    end
  end
end
