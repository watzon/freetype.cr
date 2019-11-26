module Freetype
  # FT_Charmap wrapper.
  #
  # A handle to a given character map. A charmap is used to translate character
  # codes in a given encoding into glyph indexes for its parent's face. Some
  # font formats may provide several charmaps per font.
  #
  # Each face object owns zero or more charmaps, but only one of them can be
  # 'active' and used by FT_Get_Char_Index or FT_Load_Char.
  #
  # The list of available charmaps in a face is available through the
  # 'face.num_charmaps' and 'face.charmaps' fields of FT_FaceRec.
  #
  # The currently active charmap is available as 'face.charmap'. You should
  # call FT_Set_Charmap to change it.
  #
  # **Note**:
  #
  #   When a new face is created (either through FT_New_Face or FT_Open_Face),
  #   the library looks for a Unicode charmap within the list and automatically
  #   activates it.
  #
  # **See also**:
  #
  #   See `LibFreetype::FT_CharMapRec` for the publicly accessible fields of a
  #   given character map.
  class Charmap
    getter charmap

    def initialize(@charmap : LibFreetype::FT_CharMap)
    end

    # An FT_Encoding tag identifying the charmap. Use this with
    # FT_Select_Charmap.
    def encoding
      @charmap.value.encoding
    end

    # An ID number describing the platform for the following
    # encoding ID. This comes directly from the TrueType
    # specification and should be emulated for other
    # formats.
    def platform_id
      @charmap.value.platform_id
    end

    # A platform specific encoding number. This also comes from
    # the TrueType specification and should be emulated
    # similarly.
    def encoding_id
      @charmap.value.encoding_id
    end

    # A platform specific encoding name. This also comes from
    # the TrueType specification and should be emulated
    # similarly.
    def encoding_name
      LibFreetype::FT_Encoding.each do |member, value|
        if encoding == value
          return member.to_s.gsub("FT_ENCODING_", "")
        end
      end
      return "Unknown encoding"
    end

    # The index into the array of character maps within the face to
    # which 'charmap' belongs. If an error occurs, -1 is returned.
    def index
      LibFreetype.FT_Get_Charmap_Index(@charmap)
    end

    # The language ID of 'charmap'. If 'charmap' doesn't
    # belong to a TrueType/sfnt face, just return 0 as the
    # default value.
    def cmap_language_id
      LibFreetype.FT_Get_CMap_Language_ID(@charmap)
    end

    # The format of 'charmap'. If 'charmap' doesn't belong to a
    # TrueType/sfnt face, return -1.
    def cmap_format
      LibFreetype.FT_Get_CMap_Format(@charmap)
    end
  end
end
