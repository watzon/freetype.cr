@[Link("freetype")]
lib LibFreetype
  FT_FACE_FLAG_SCALABLE          = sizeof(LibC::Long) <<  0
  FT_FACE_FLAG_FIXED_SIZES       = sizeof(LibC::Long) <<  1
  FT_FACE_FLAG_FIXED_WIDTH       = sizeof(LibC::Long) <<  2
  FT_FACE_FLAG_SFNT              = sizeof(LibC::Long) <<  3
  FT_FACE_FLAG_HORIZONTAL        = sizeof(LibC::Long) <<  4
  FT_FACE_FLAG_VERTICAL          = sizeof(LibC::Long) <<  5
  FT_FACE_FLAG_KERNING           = sizeof(LibC::Long) <<  6
  FT_FACE_FLAG_FAST_GLYPHS       = sizeof(LibC::Long) <<  7
  FT_FACE_FLAG_MULTIPLE_MASTERS  = sizeof(LibC::Long) <<  8
  FT_FACE_FLAG_GLYPH_NAMES       = sizeof(LibC::Long) <<  9
  FT_FACE_FLAG_EXTERNAL_STREAM   = sizeof(LibC::Long) << 10
  FT_FACE_FLAG_HINTER            = sizeof(LibC::Long) << 11
  FT_FACE_FLAG_CID_KEYED         = sizeof(LibC::Long) << 12
  FT_FACE_FLAG_TRICKY            = sizeof(LibC::Long) << 13
  FT_FACE_FLAG_COLOR             = sizeof(LibC::Long) << 14
  FT_FACE_FLAG_VARIATION         = sizeof(LibC::Long) << 15

  FT_STYLE_FLAG_ITALIC  = 1 << 0
  FT_STYLE_FLAG_BOLD    = 1 << 1

  FT_OPEN_MEMORY    = 0x1
  FT_OPEN_STREAM    = 0x2
  FT_OPEN_PATHNAME  = 0x4
  FT_OPEN_DRIVER    = 0x8
  FT_OPEN_PARAMS    = 0x10

  FT_LOAD_DEFAULT                      = 0x0
  FT_LOAD_NO_SCALE                     = sizeof(LibC::Long) << 0
  FT_LOAD_NO_HINTING                   = sizeof(LibC::Long) << 1
  FT_LOAD_RENDER                       = sizeof(LibC::Long) << 2
  FT_LOAD_NO_BITMAP                    = sizeof(LibC::Long) << 3
  FT_LOAD_VERTICAL_LAYOUT              = sizeof(LibC::Long) << 4
  FT_LOAD_FORCE_AUTOHINT               = sizeof(LibC::Long) << 5
  FT_LOAD_CROP_BITMAP                  = sizeof(LibC::Long) << 6
  FT_LOAD_PEDANTIC                     = sizeof(LibC::Long) << 7
  FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH  = sizeof(LibC::Long) << 9
  FT_LOAD_NO_RECURSE                   = sizeof(LibC::Long) << 10
  FT_LOAD_IGNORE_TRANSFORM             = sizeof(LibC::Long) << 11
  FT_LOAD_MONOCHROME                   = sizeof(LibC::Long) << 12
  FT_LOAD_LINEAR_DESIGN                = sizeof(LibC::Long) << 13
  FT_LOAD_NO_AUTOHINT                  = sizeof(LibC::Long) << 15
  # Bits 16-19 are used by `FT_LOAD_TARGET_` #
  FT_LOAD_COLOR                        = sizeof(LibC::Long) << 20
  FT_LOAD_COMPUTE_METRICS              = sizeof(LibC::Long) << 21
  FT_LOAD_BITMAP_METRICS_ONLY          = sizeof(LibC::Long) << 22

  FT_LOAD_TARGET_NORMAL  = ((FT_RENDER_MODE_NORMAL & 15) << 16)
  FT_LOAD_TARGET_LIGHT   = ((FT_RENDER_MODE_LIGHT & 15) << 16)
  FT_LOAD_TARGET_MONO    = ((FT_RENDER_MODE_MONO & 15) << 16)
  FT_LOAD_TARGET_LCD     = ((FT_RENDER_MODE_LCD & 15) << 16)
  FT_LOAD_TARGET_LCD_V   = ((FT_RENDER_MODE_LCD_V & 15) << 16)

  FT_SUBGLYPH_FLAG_ARGS_ARE_WORDS      =     1
  FT_SUBGLYPH_FLAG_ARGS_ARE_XY_VALUES  =     2
  FT_SUBGLYPH_FLAG_ROUND_XY_TO_GRID    =     4
  FT_SUBGLYPH_FLAG_SCALE               =     8
  FT_SUBGLYPH_FLAG_XY_SCALE            =  0x40
  FT_SUBGLYPH_FLAG_2X2                 =  0x80
  FT_SUBGLYPH_FLAG_USE_MY_METRICS      = 0x200

  FT_FSTYPE_INSTALLABLE_EMBEDDING         = 0x0000
  FT_FSTYPE_RESTRICTED_LICENSE_EMBEDDING  = 0x0002
  FT_FSTYPE_PREVIEW_AND_PRINT_EMBEDDING   = 0x0004
  FT_FSTYPE_EDITABLE_EMBEDDING            = 0x0008
  FT_FSTYPE_NO_SUBSETTING                 = 0x0100
  FT_FSTYPE_BITMAP_EMBEDDING_ONLY         = 0x0200

  FT_PALETTE_FOR_LIGHT_BACKGROUND  = 0x01
  FT_PALETTE_FOR_DARK_BACKGROUND   = 0x02

  FT_FSTYPE_XXX = {
    "FT_FSTYPE_INSTALLABLE_EMBEDDING"         => 0x0000,
    "FT_FSTYPE_RESTRICTED_LICENSE_EMBEDDING"  => 0x0002,
    "FT_FSTYPE_PREVIEW_AND_PRINT_EMBEDDING"   => 0x0004,
    "FT_FSTYPE_EDITABLE_EMBEDDING"            => 0x0008,
    "FT_FSTYPE_NO_SUBSETTING"                 => 0x0100,
    "FT_FSTYPE_BITMAP_EMBEDDING_ONLY"         => 0x0200
  }

  struct FT_Vector
    x : LibC::Long
    y : LibC::Long
  end

  struct FT_BBox
    xMin : LibC::Long
    yMin : LibC::Long
    xMax : LibC::Long
    yMax : LibC::Long
  end

  struct FT_Matrix
    xx : LibC::Long
    xy : LibC::Long
    yx : LibC::Long
    yy : LibC::Long
  end

  struct FT_UnitVector
    x : LibC::Short
    y : LibC::Short
  end

  struct FT_Data
    pointer : LibC::Char*
    length : LibC::Int
  end

  struct FT_Generic
    data : Void*
    finalizer : FT_Generic_Finalizer
  end

  struct FT_Bitmap
    rows : LibC::UInt
    width : LibC::UInt
    pitch : LibC::Int
    buffer : LibC::Char*
    num_grays : LibC::Short
    pixel_mode : LibC::Char
    palette_mode : LibC::Char
    palette : Void*
  end

  struct FT_FaceRec
    num_faces : LibC::Long
    face_index : LibC::Long

    face_flags : LibC::Long
    style_flags : LibC::Long

    num_glyphs : LibC::Long

    family_name : LibC::Char*
    style_name : LibC::Char*

    num_fixed_sizes : LibC::Int
    available_sizes : FT_CharMap*

    num_charmaps : LibC::Int
    charmaps : FT_CharMap*

    generic : FT_Generic

    bbox : FT_BBox

    units_per_EM : LibC::UShort
    ascender : LibC::Short
    descender : LibC::Short
    height : LibC::Short

    max_advance_width : LibC::Short
    max_advance_height : LibC::Short

    glyph : FT_GlyphSlot
    size : FT_Size
    charmap : FT_CharMap

    driver : FT_Driver
    memory : FT_Memory
    stream : FT_Stream

    sizes_list : FT_ListRec

    autohint : FT_Generic
    extensions : Void*

    internal : FT_Face_Internal
  end

  struct FT_ListRec
    head : FT_ListNode
    tail : FT_ListNode
  end

  struct FT_ListNodeRec
    prev : FT_ListNode
    next : FT_ListNode
    data : Void*
  end

  struct FT_SizeRec
    face : FT_Face
    generic : FT_Generic
    metrics : FT_Size_Metrics
    internal : FT_Size_Internal
  end

  struct FT_Size_Metrics
    x_ppem : LibC::UShort
    y_ppem : LibC::UShort

    x_scale : LibC::Long
    y_scale : LibC::Long

    ascender : LibC::Long
    descender : LibC::Long
    height : LibC::Long
    max_advance : LibC::Long
  end

  struct FT_GlyphSlotRec
    library : FT_Library
    face : FT_Face
    next : FT_GlyphSlot
    glyph_index : LibC::UInt

    metrics : FT_Glyph_Metrics
    linearHoriAdvance : LibC::Long
    linearVertAdvance : LibC::Long
    advance : FT_Vector

    format : FT_Glyph_Format

    bitmap : FT_Bitmap
    bitmap_left : LibC::Int
    bitmap_top : LibC::Int

    outline : FT_Outline

    num_subglyphs : LibC::UInt
    subglyphs : FT_SubGlyph

    control_data : Void*
    control_len : LibC::Long

    lsb_data : LibC::Long
    rsb_data : LibC::Long

    other : Void*

    internal : FT_Slot_Internal
  end

  struct FT_Outline
    n_contours : LibC::Short
    n_points : LibC::Short

    points : FT_Vector*
    tags : LibC::Char*
    contours : LibC::Short*

    flags : LibC::Int
  end

  struct FT_Glyph_Metrics
    width : LibC::Long
    height : LibC::Long

    horiBearingX : LibC::Long
    horiBearingY : LibC::Long
    horiAdvance : LibC::Long

    vertBearingX : LibC::Long
    vertBearingY : LibC::Long
    vertAdvance : LibC::Long
  end

  struct FT_Bitmap_Size
    height : LibC::Short
    width : LibC::Short

    size : LibC::Long

    x_ppem : LibC::Long
    y_ppem : LibC::Long
  end

  struct FT_Parameter
    tag : LibC::ULong
    data : Void*
  end

  struct FT_Open_Args
    flags : LibC::UInt
    memory_base : LibC::Char*
    memory_size : LibC::Long
    pathname : LibC::Char**
    stream : FT_Stream
    driver : FT_Module
    num_params : LibC::Int
    params : FT_Parameter*
  end

  struct FT_Size_RequestRec
    type : FT_Size_Request_Type
    width : LibC::Long
    height : LibC::Long
    horiResolution : LibC::UInt
    vertResolution : LibC::UInt
  end

  struct FT_CharMapRec
    face : FT_Face
    encoding : FT_Encoding
    platform_id : LibC::UShort
    encoding_id : LibC::UShort
  end

  struct FT_Color
    blue : LibC::Char
    green : LibC::Char
    red : LibC::Char
    alpha : LibC::Char
  end

  struct FT_Palette_Data
    num_palettes : LibC::UShort
    palette_name_ids : LibC::UShort*
    palette_flags : LibC::UShort

    num_palette_entries : LibC::UShort
    palette_entry_name_ids : LibC::UShort
  end

  struct FT_LayerIterator
    num_layers : LibC::UInt
    layer : LibC::UInt
    p : LibC::Char*
  end

  struct FT_GlyphRec
    library : FT_Library
    # clazz : FT_Glyph_Class* # Private
    format : FT_Glyph_Format
    advance : FT_Vector
  end

  struct FT_BitmapGlyphRec
    root : FT_GlyphRec
    left : LibC::Int
    top : LibC::Int
    bitmap : FT_Bitmap
  end

  struct FT_OutlineGlyphRec
    root : FT_GlyphRec
    outline : FT_Outline
  end

  struct FT_StreamRec
    base : LibC::Char*
    size : LibC::Long
    pos : LibC::Long

    descriptor : FT_StreamDesc
    pathname : FT_StreamDesc
    read : FT_Stream_IoFunc
    close : FT_Stream_CloseFunc

    memory : FT_Memory
    cursor : LibC::Char*
    limit : LibC::Char*
  end

  struct FT_StreamDesc
    value : LibC::Long
    pointer : Void*
  end

  struct FT_MemoryRec
    user : Void*
    alloc : FT_Alloc_Func
    free : FT_Free_Func
    realloc : FT_Realloc_Func
  end

  struct FT_SfntName
    platform_id : LibC::UShort
    encoding_id : LibC::UShort
    language_id : LibC::UShort
    name_id     : LibC::UShort

    string : LibC::Char* # this string is *not* null-terminated!
    string_len : LibC::UInt
  end

  struct FT_SfntLangTag
    string : LibC::Char* # this string is *not* null-terminated!
    string_len : LibC::UInt
  end

  enum FT_Pixel_Mode
    FT_PIXEL_MODE_NONE = 0
    FT_PIXEL_MODE_MONO = 1
    FT_PIXEL_MODE_GRAY = 2
    FT_PIXEL_MODE_GRAY2 = 3
    FT_PIXEL_MODE_GRAY4 = 4
    FT_PIXEL_MODE_LCD = 5
    FT_PIXEL_MODE_LCD_V = 6
    FT_PIXEL_MODE_BGRA = 7
    FT_PIXEL_MODE_MAX = 8
  end

  enum FT_Glyph_Format
    FT_GLYPH_FORMAT_NONE = 0
    FT_GLYPH_FORMAT_COMPOSITE = 1668246896
    FT_GLYPH_FORMAT_BITMAP = 1651078259
    FT_GLYPH_FORMAT_OUTLINE = 1869968492
    FT_GLYPH_FORMAT_PLOTTER = 1886154612
  end

  enum FT_Encoding
    FT_ENCODING_NONE = 0

    FT_ENCODING_MS_SYMBOL = 1937337698
    FT_ENCODING_UNICODE = 1970170211

    FT_ENCODING_SJIS = 1936353651
    FT_ENCODING_PRC = 1734484000
    FT_ENCODING_BIG5 = 1651074869
    FT_ENCODING_WANSUNG = 2002873971
    FT_ENCODING_JOHAB = 1785686113

    FT_ENCODING_GB2312 = 1734484000
    FT_ENCODING_MS_SJIS = 1936353651
    FT_ENCODING_MS_GB2312 = 1734484000
    FT_ENCODING_MS_BIG5 = 1651074869
    FT_ENCODING_MS_WANSUNG = 2002873971
    FT_ENCODING_MS_JOHAB = 1785686113

    FT_ENCODING_ADOBE_STANDARD = 1094995778
    FT_ENCODING_ADOBE_EXPERT = 1094992453
    FT_ENCODING_ADOBE_CUSTOM = 1094992451
    FT_ENCODING_ADOBE_LATIN_1 = 1818326065

    FT_ENCODING_OLD_LATIN_2 = 1818326066
    FT_ENCODING_APPLE_ROMAN = 1634889070
  end

  enum FT_Size_Request_Type
    FT_SIZE_REQUEST_TYPE_NOMINAL
    FT_SIZE_REQUEST_TYPE_REAL_DIM
    FT_SIZE_REQUEST_TYPE_BBOX
    FT_SIZE_REQUEST_TYPE_CELL
    FT_SIZE_REQUEST_TYPE_SCALES

    FT_SIZE_REQUEST_TYPE_MAX
  end

  enum FT_Render_Mode
    FT_RENDER_MODE_NORMAL = 0
    FT_RENDER_MODE_LIGHT
    FT_RENDER_MODE_MONO
    FT_RENDER_MODE_LCD
    FT_RENDER_MODE_LCD_V

    FT_RENDER_MODE_MAX
  end

  enum FT_Kerning_Mode
    FT_KERNING_DEFAULT = 0
    FT_KERNING_UNFITTED
    FT_KERNING_UNSCALED
  end

  enum FT_Glyph_BBox_Mode
    FT_GLYPH_BBOX_UNSCALED  = 0
    FT_GLYPH_BBOX_SUBPIXELS = 0
    FT_GLYPH_BBOX_GRIDFIT   = 1
    FT_GLYPH_BBOX_TRUNCATE  = 2
    FT_GLYPH_BBOX_PIXELS    = 3
  end

  enum FT_StrokerBorder
    FT_STROKER_BORDER_LEFT = 0
    FT_STROKER_BORDER_RIGHT
  end

  enum FT_Stroker_LineCap
    FT_STROKER_LINECAP_BUTT = 0
    FT_STROKER_LINECAP_ROUND
    FT_STROKER_LINECAP_SQUARE
  end

  enum FT_Stroker_LineJoin
    FT_STROKER_LINEJOIN_ROUND          = 0
    FT_STROKER_LINEJOIN_BEVEL          = 1
    FT_STROKER_LINEJOIN_MITER_VARIABLE = 2
    FT_STROKER_LINEJOIN_MITER          = 2
    FT_STROKER_LINEJOIN_MITER_FIXED    = 3
  end

  fun FT_Library_Version(library : FT_Library, amajor : LibC::Int*, aminot : LibC::Int*, apatch : LibC::Int*) : Void
  fun FT_Face_CheckTrueTypePatents(face : FT_Face) : LibC::Char
  fun FT_Face_SetUnpatentedHinting(face : FT_Face, value : LibC::Char) : LibC::Char

  fun FT_Init_FreeType(alibrary : FT_Library*) : LibC::Int
  fun FT_Done_FreeType(library : FT_Library) : LibC::Int
  fun FT_New_Face(library : FT_Library, filepathname : LibC::Char*, face_index : LibC::Long, aface : FT_Face*) : LibC::Int
  fun FT_New_Memory_Face(library : FT_Library, filebase : LibC::Char*, filesize : LibC::Long, face_index : LibC::Long, aface : FT_Face*) : LibC::Int
  fun FT_Done_Face(face : FT_Face) : LibC::Int
  fun FT_Reference_Face(face : FT_Face) : LibC::Int
  fun FT_Face_Properties(face : FT_Face, num_properties : LibC::UInt, properties : FT_Parameter*) : LibC::Int
  fun FT_Open_Face(library : FT_Library, args : FT_Open_Args*, face_index : LibC::Long, aface : FT_Face*) : LibC::Int
  fun FT_Attach_File(face : FT_Face, filepathname : LibC::Char*) : LibC::Int
  fun FT_Attach_Stream(face : FT_Face, parameters : FT_Open_Args*) : LibC::Int
  fun FT_Set_Char_Size(face : FT_Face, char_width : LibC::Long, char_height : LibC::Long, horz_resolution : LibC::UInt, vert_resolution : LibC::UInt) : LibC::Int
  fun FT_Set_Pixel_Sizes(face : FT_Face, pixel_width : LibC::UInt, pixel_height : LibC::UInt) : LibC::Int
  fun FT_Request_Size(face : FT_Face, req : FT_Size_Request) : LibC::Int
  fun FT_Select_Size(face : FT_Face, strike_index : LibC::Int) : LibC::Int
  fun FT_Set_Transform(face : FT_Face, matrix : FT_Matrix, delta : FT_Vector) : LibC::Int
  fun FT_Load_Glyph(face : FT_Face, glyph_index : LibC::UInt, load_flags : LibC::Int32T) : LibC::Int
  fun FT_Get_Char_Index(face : FT_Face, charcode : LibC::ULong) : LibC::Int
  fun FT_Get_First_Char(face : FT_Face, agindex : LibC::UInt*) : LibC::Int
  fun FT_Get_Next_Char(face : FT_Face, char_code : LibC::ULong, agindex : LibC::UInt*) : LibC::Int
  fun FT_Get_Name_Index(face : FT_Face, glyph_name : LibC::Char*) : LibC::Int
  fun FT_Load_Char(face : FT_Face, char_code : LibC::ULong, load_flags : LibC::Int32T) : LibC::Int
  fun FT_Render_Glyph(slot : FT_GlyphSlot, render_mode : FT_Render_Mode) : LibC::Int
  fun FT_Get_Kerning(face : FT_Face, left_glyph : LibC::UInt, right_glyph : LibC::UInt, kern_mode : LibC::UInt, akerning : FT_Vector*) : LibC::Int
  fun FT_Get_Track_Kerning(face : FT_Face, point_size : LibC::Long, degree : LibC::Int, akerning : FT_Vector*) : LibC::Int
  fun FT_Get_Glyph_Name(face : FT_Face, glyph_index : LibC::UInt, buffer : Void*, buffer_max : LibC::UInt) : LibC::Int
  fun FT_Get_Postscript_Name(face : FT_Face) : LibC::Char*
  fun FT_Select_Charmap(face : FT_Face, encoding : FT_Encoding) : LibC::Int
  fun FT_Set_Charmap(face : FT_Face, charmap : FT_CharMap) : LibC::Int
  fun FT_Get_Charmap_Index(charmap : FT_CharMap) : LibC::Int
  fun FT_Get_FSType_Flags(face : FT_Face) : LibC::UShort
  fun FT_Get_SubGlyph_Info(glyph : FT_GlyphSlot, sub_index : LibC::UInt, p_index : LibC::Int*, p_flags : LibC::UInt*, p_arg1 : LibC::Int*, p_arg2 : LibC::Int*, p_transform : FT_Matrix*) : LibC::Int

  fun FT_Face_GetCharVariantIndex(face : FT_Face, charcode : LibC::ULong, variantSelector : LibC::ULong) : LibC::UInt
  fun FT_Face_GetCharVariantIsDefault(face : FT_Face, charcode : LibC::ULong, variantSelector : LibC::ULong) : LibC::UInt
  fun FT_Face_GetVariantSelectors(face : FT_Face) : LibC::UInt32T*
  fun FT_Face_GetVariantsOfChar(face : FT_Face, charcode : LibC::ULong) : LibC::UInt32T*
  fun FT_Face_GetCharsOfVariant(face : FT_Face, variantSelector : LibC::ULong) : LibC::UInt32T*

  fun FT_Palette_Data_Get(face : FT_Face, apalette : FT_Palette_Data*) : LibC::Int
  fun FT_Palette_Select(face : FT_Face, palette_index : LibC::UShort, apalette : FT_Color**)
  fun FT_Palette_Set_Foreground_Color(face : FT_Face, foreground_color : FT_Color) : LibC::Int

  fun FT_Get_Color_Glyph_Layer(face : FT_Face, base_glyph : LibC::UInt, aglyph_index : LibC::UInt*, acolor_index : LibC::UInt*, iterator : FT_LayerIterator*) : LibC::Char

  fun FT_New_Glyph(library : FT_Library, format : FT_Glyph_Format, aglyph : FT_Glyph*) : LibC::Int
  fun FT_Get_Glyph(slot : FT_GlyphSlot, aglyph : FT_Glyph*) : LibC::Int
  fun FT_Glyph_Copy(source : FT_Glyph, target : FT_Glyph*) : LibC::Int
  fun FT_Glyph_Transform(glyph : FT_Glyph, matrix : FT_Matrix*, delta : FT_Vector*) : LibC::Int
  fun FT_Glyph_Transform(glyph : FT_Glyph, matrix : FT_Matrix*, delta : FT_Vector*) : LibC::Int
  fun FT_Glyph_Get_CBox(glyph : FT_Glyph) : Void
  fun FT_Glyph_To_Bitmap(the_glyph : FT_Glyph*, render_mode : FT_Render_Mode, origin : FT_Vector*, destroy : LibC::Char) : LibC::Int
  fun FT_Done_Glyph(the_glyph : FT_Glyph) : Void

  fun FT_New_Size(face : FT_Face, size : FT_Size*) : LibC::Int
  fun FT_Done_Size(size : FT_Size) : LibC::Int
  fun FT_Activate_Size(size : FT_Size) : LibC::Int

  fun FT_Get_Font_Format(face : FT_Face) : LibC::Char*

  fun FT_Get_Sfnt_Name_Count(face : FT_Face) : LibC::UInt
  fun FT_Get_Sfnt_Name(face : FT_Face, idx : LibC::UInt, aname : FT_SfntName*) : LibC::Int
  fun FT_Get_Sfnt_LangTag(face : FT_Face, langID : LibC::UInt, alangTag : FT_SfntLangTag*) : LibC::Int

  fun FT_Stroker_New(library : FT_Library, astroker : FT_Stroker*) : LibC::Int
  fun FT_Stroker_Set(stroker : FT_Stroker, radius : LibC::Long, line_cap : FT_Stroker_LineCap, line_join : FT_Stroker_LineJoin, miter_limit : LibC::Long) : LibC::Int
  fun FT_Stroker_Rewind(stroker : FT_Stroker) : LibC::Int
  fun FT_Stroker_ParseOutline(stroker : FT_Stroker, outline : FT_Outline*, opened : LibC::Char) : LibC::Int
  fun FT_Stroker_Done(stroker : FT_Stroker) : Void
  fun FT_Stroker_BeginSubPath(stroker : FT_Stroker, to : FT_Vector*, open : LibC::Char) : LibC::Int
  fun FT_Stroker_EndSubPath(stroker : FT_Stroker) : LibC::Int
  fun FT_Stroker_LineTo(stroker : FT_Stroker, to : FT_Vector) : LibC::Int
  fun FT_Stroker_ConicTo(stroker : FT_Stroker, control : FT_Vector*, to : FT_Vector*) : LibC::Int
  fun FT_Stroker_CubicTo(stroker : FT_Stroker, control1 : FT_Vector*, control2 : FT_Vector*, to : FT_Vector*) : LibC::Int
  fun FT_Stroker_GetBorderCounts(stroker : FT_Stroker, border : FT_StrokerBorder, anum_points : LibC::UInt*, anum_contours : LibC::UInt*) : LibC::Int
  fun FT_Stroker_ExportBorder(stroker : FT_Stroker, border : FT_StrokerBorder, outline : FT_Outline*) : LibC::Int
  fun FT_Stroker_GetCounts(stroker : FT_Stroker, anum_points : LibC::UInt, anum_contours : LibC::UInt) : LibC::Int
  fun FT_Stroker_Export(stroker : FT_Stroker, outline : FT_Outline*) : Void

  type FT_Library = Void*
  type FT_Face = FT_FaceRec*
  type FT_Size = FT_SizeRec*
  type FT_SubGlyph = Void*
  type FT_Module = Void*
  type FT_Size_Request = Void*
  type FT_Face_Internal = Void*
  type FT_Size_Internal = Void*
  type FT_Slot_Internal = Void*
  type FT_Driver = Void*
  type FT_Memory = FT_MemoryRec
  type FT_Glyph = FT_GlyphRec*
  type FT_BitmapGlyph = FT_BitmapGlyphRec*
  type FT_OutlineGlyph = FT_OutlineGlyphRec*
  type FT_ListNode = FT_ListNodeRec*
  type FT_CharMap = FT_CharMapRec*
  type FT_GlyphSlot = FT_GlyphSlotRec*
  type FT_Stream = FT_StreamRec*
  type FT_Stroker = Void*

  type FT_Generic_Finalizer = (Void* -> Void)
  type FT_Stream_IoFunc = (FT_Stream, LibC::Long, LibC::Char*,  LibC::Long -> LibC::ULong)
  type FT_Stream_CloseFunc = (FT_Stream -> Void)

  type FT_Alloc_Func = (FT_Memory, LibC::Long -> Void*)
  type FT_Free_Func = (FT_Memory, Void* -> Void*)
  type FT_Realloc_Func = (FT_Memory, LibC::Long, LibC::Long, Void* -> Void*)
end
