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

  struct FT_Vector
    x : FT_Pos
    y : FT_Pos
  end

  struct FT_BBox
    xMin : FT_Pos
    yMin : FT_Pos
    xMax : FT_Pos
    yMax : FT_Pos
  end

  struct FT_Matrix
    xx : FT_Pos
    xy : FT_Pos
    yx : FT_Pos
    yy : FT_Pos
  end

  struct FT_UnitVector
    x : FT_F2Dot14
    y : FT_F2Dot14
  end

  struct FT_Data
    pointer : FT_Byte*
    length : FT_Int
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

  struct FT_Face_Rect
    num_faces : FT_Long
    face_index : FT_Long

    face_flags : FT_Long
    style_flags : FT_Long

    num_glyphs : FT_Long

    family_name : FT_String*
    style_name : FT_String*

    num_fixed_sizes : FT_Int
    available_sizes : FT_CharMap*

    generic : FT_Generic

    bbox : FT_BBox

    units_per_EM : FT_UShort
    ascender : FT_Short
    descender : FT_Short
    height : FT_Short

    max_advance_width : FT_Short
    max_advance_height : FT_Short

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
    x_ppem : FT_UShort
    y_ppem : FT_UShort

    x_scale : FT_Fixed
    y_scale : FT_Fixed

    ascender : FT_Pos
    descender : FT_Pos
    height : FT_Pos
    max_advance : FT_Pos
  end

  struct FT_GlyphSlotRec
    library : FT_Library
    face : FT_Face
    next : FT_GlyphSlot
    glyph_index : FT_UInt

    metrics : FT_Glyph_Metrics
    linearHoriAdvance : FT_Fixed
    linearVertAdvance : FT_Fixed
    advance : FT_Vector

    format : FT_Glyph_Format

    bitmap : FT_Bitmap
    bitmap_left : FT_Int
    bitmap_top : FT_Int

    outline : FT_Outline

    num_subglyphs : FT_UInt
    subglyphs : FT_SubGlyph

    control_data : Void*
    control_len : LibC::Long

    lsb_data : FT_Pos
    rsb_data : FT_Pos

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
    width : FT_Pos
    height : FT_Pos

    horiBearingX : FT_Pos
    horiBearingY : FT_Pos
    horiAdvance : FT_Pos

    vertBearingX : FT_Pos
    vertBearingY : FT_Pos
    vertAdvance : FT_Pos
  end

  struct FT_Bitmap_Size
    height : FT_Short
    width : FT_Short

    size : FT_Pos

    x_ppem : FT_Pos
    y_ppem : FT_Pos
  end

  struct FT_Parameter
    tag : FT_ULong
    data : FT_Pointer
  end

  struct FT_Open_Args
    flags : FT_UInt
    memory_base : FT_Byte*
    memory_size : FT_Long
    pathname : FT_String*
    stream : FT_Stream
    driver : FT_Module
    num_params : FT_Int
    params : FT_Parameter*
  end

  struct FT_Size_RequestRec
    type : FT_Size_Request_Type
    width : FT_Long
    height : FT_Long
    horiResolution : FT_UInt
    vertResolution : FT_UInt
  end

  struct FT_CharMapRec
    face : FT_Face
    encoding : FT_Encoding
    platform_id : FT_UShort
    encoding_id : FT_UShort
  end

  struct FT_Color
    blue : FT_Byte
    green : FT_Byte
    red : FT_Byte
    alpha : FT_Byte
  end

  struct FT_Palette_Data
    num_palettes : FT_UShort
    palette_name_ids : FT_UShort*
    palette_flags : FT_UShort

    num_palette_entries : FT_UShort
    palette_entry_name_ids : FT_UShort
  end

  struct FT_LayerIterator
    num_layers : FT_UInt
    layer : FT_UInt
    p : FT_Byte*
  end

  struct FT_GlyphRec
    library : FT_Library
    # clazz : FT_Glyph_Class* # Private
    format : FT_Glyph_Format
    advance : FT_Vector
  end

  struct FT_BitmapGlyphRec
    root : FT_GlyphRec
    left : FT_Int
    top : FT_Int
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

  fun FT_Library_Version(library : FT_Library, amajor : FT_Int*, aminot : FT_Int*, apatch : FT_Int*) : Void
  fun FT_Face_CheckTrueTypePatents(face : FT_Face) : FT_Bool
  fun FT_Face_SetUnpatentedHinting(face : FT_Face, value : FT_Bool) : FT_Bool

  fun FT_Init_FreeType(alibrary : FT_Library*) : FT_Error
  fun FT_Done_FreeType(library : FT_Library) : FT_Error
  fun FT_New_Face(library : FT_Library, filepathname : LibC::Char*, face_index : FT_Long, aface : FT_Face*) : FT_Error
  fun FT_Done_Face(face : FT_Face) : FT_Error
  fun FT_Reference_Face(face : FT_Face) : FT_Error
  fun FT_Face_Properties(face : FT_Face, num_properties : FT_UInt, properties : FT_Parameter*) : FT_Error
  fun FT_Open_Face(library : FT_Library, args : FT_Open_Args*, face_index : FT_Long, aface : FT_Face*) : FT_Error
  fun FT_Attach_File(face : FT_Face, filepathname : LibC::Char*) : FT_Error
  fun FT_Attach_Stream(face : FT_Face, parameters : FT_Open_Args*) : FT_Error
  fun FT_Set_Char_Size(face : FT_Face, char_width : FT_F26Dot6, char_height : FT_F26Dot6, horz_resolution : FT_UInt, vert_resolution : FT_UInt) : FT_Error
  fun FT_Set_Pixel_Sizes(face : FT_Face, pixel_width : FT_UInt, pixel_height : FT_UInt) : FT_Error
  fun FT_Request_Size(face : FT_Face, req : FT_Size_Request) : FT_Error
  fun FT_Select_Size(face : FT_Face, strike_index : FT_Int) : FT_Error
  fun FT_Set_Transform(face : FT_Face, matrix : FT_Matrix, delta : FT_Vector) : FT_Error
  fun FT_Load_Glyph(face : FT_Face, glyph_index : FT_UInt, load_flags : FT_Int32) : FT_Error
  fun FT_Get_Char_Index(face : FT_Face, charcode : FT_ULong) : FT_Error
  fun FT_Get_First_Char(face : FT_Face, agindex : FT_UInt*) : FT_Error
  fun FT_Get_Next_Char(face : FT_Face, char_code : FT_ULong, agindex : FT_UInt*) : FT_Error
  fun FT_Get_Name_Index(face : FT_Face, glyph_name : FT_String*) : FT_Error
  fun FT_Load_Char(face : FT_Face, char_code : FT_ULong, load_flags : FT_Int32) : FT_Error
  fun FT_Render_Glyph(slot : FT_GlyphSlot, render_mode : FT_Render_Mode) : FT_Error
  fun FT_Get_Kerning(face : FT_Face, left_glyph : FT_UInt, right_glyph : FT_UInt, kern_mode : FT_UInt, akerning : FT_Vector*) : FT_Error
  fun FT_Get_Track_Kerning(face : FT_Face, point_size : FT_Fixed, degree : FT_Int, akerning : FT_Vector*) : FT_Error
  fun FT_Get_Glyph_Name(face : FT_Face, glyph_index : FT_UInt, buffer : FT_Pointer, buffer_max : FT_UInt) : FT_Error
  fun FT_Get_Postscript_Name(face : FT_Face) : LibC::Char*
  fun FT_Select_Charmap(face : FT_Face, encoding : FT_Encoding) : FT_Error
  fun FT_Set_Charmap(face : FT_Face, charmap : FT_CharMap) : FT_Error
  fun FT_Get_Charmap_Index(charmap : FT_CharMap) : FT_Int
  fun FT_Get_FSType_Flags(face : FT_Face) : FT_UShort
  fun FT_Get_SubGlyph_Info(glyph : FT_GlyphSlot, sub_index : FT_UInt, p_index : FT_Int*, p_flags : FT_UInt*, p_arg1 : FT_Int*, p_arg2 : FT_Int*, p_transform : FT_Matrix*) : FT_Error

  fun FT_Face_GetCharVariantIndex(face : FT_Face, charcode : FT_ULong, variantSelector : FT_ULong) : FT_UInt
  fun FT_Face_GetCharVariantIsDefault(face : FT_Face, charcode : FT_ULong, variantSelector : FT_ULong) : FT_UInt
  fun FT_Face_GetVariantSelectors(face : FT_Face) : FT_UInt32*
  fun FT_Face_GetVariantsOfChar(face : FT_Face, charcode : FT_ULong) : FT_UInt32*
  fun FT_Face_GetCharsOfVariant(face : FT_Face, variantSelector : FT_ULong) : FT_UInt32*

  fun FT_Palette_Data_Get(face : FT_Face, apalette : FT_Palette_Data*) : FT_Error
  fun FT_Palette_Select(face : FT_Face, palette_index : FT_UShort, apalette : FT_Color**)
  fun FT_Palette_Set_Foreground_Color(face : FT_Face, foreground_color : FT_Color) : FT_Error

  fun FT_Get_Color_Glyph_Layer(face : FT_Face, base_glyph : FT_UInt, aglyph_index : FT_UInt*, acolor_index : FT_UInt*, iterator : FT_LayerIterator*) : FT_Bool

  fun FT_New_Glyph(library : FT_Library, format : FT_Glyph_Format, aglyph : FT_Glyph*) : FT_Error
  fun FT_Get_Glyph(slot : FT_GlyphSlot, aglyph : FT_Glyph*) : FT_Error
  fun FT_Glyph_Copy(source : FT_Glyph, target : FT_Glyph*) : FT_Error
  fun FT_Glyph_Transform(glyph : FT_Glyph, matrix : FT_Matrix*, delta : FT_Vector*) : FT_Error
  fun FT_Glyph_Transform(glyph : FT_Glyph, matrix : FT_Matrix*, delta : FT_Vector*) : FT_Error
  fun FT_Glyph_Get_CBox(glyph : FT_Glyph) : Void
  fun FT_Glyph_To_Bitmap(the_glyph : FT_Glyph*, render_mode : FT_Render_Mode, origin : FT_Vector*, destroy : FT_Bool) : FT_Error
  fun FT_Done_Glyph(the_glyph : FT_Glyph) : Void

  fun FT_New_Size(face : FT_Face, size : FT_Size*) : FT_Error
  fun FT_Done_Size(size : FT_Size) : FT_Error
  fun FT_Activate_Size(size : FT_Size) : FT_Error

  type FT_Library = Void*
  type FT_Face = Void*
  type FT_Size = Void*
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

  type FT_Byte = LibC::Char
  type FT_Bytes = FT_Byte*
  type FT_Char = LibC::Char
  type FT_Int = LibC::Int
  type FT_UInt = LibC::UInt
  type FT_Int16 = LibC::Int16T
  type FT_UInt16 = LibC::UInt16T
  type FT_Int32 = LibC::Int32T
  type FT_UInt32 = LibC::UInt32T
  type FT_Int64 = LibC::Int64T
  type FT_UInt64 = LibC::UInt64T
  type FT_Short = LibC::Short
  type FT_UShort = LibC::UShort
  type FT_Long = LibC::Long
  type FT_ULong = LibC::ULong
  type FT_Bool = LibC::Char
  type FT_Offset = LibC::ULong
  type FT_PtrDist = LibC::Long
  type FT_String = LibC::Char*
  type FT_Tag = FT_UInt32
  type FT_Error = LibC::Int
  type FT_Fixed = LibC::Long
  type FT_Pointer = Void*
  type FT_Pos = LibC::Long
  type FT_Word = LibC::Short
  type FT_FWord = LibC::Short
  type FT_UFWord = LibC::UShort
  type FT_F2Dot14 = LibC::Short
  type FT_F26Dot6 = LibC::Long

  type FT_Generic_Finalizer = (Void* -> Void)
  type FT_Stream_IoFunc = (FT_Stream, LibC::Long, LibC::Char*,  LibC::Long -> LibC::ULong)
  type FT_Stream_CloseFunc = (FT_Stream -> Void)

  type FT_Alloc_Func = (FT_Memory, LibC::Long -> Void*)
  type FT_Free_Func = (FT_Memory, Void* -> Void*)
  type FT_Realloc_Func = (FT_Memory, LibC::Long, LibC::Long, Void* -> Void*)
end
