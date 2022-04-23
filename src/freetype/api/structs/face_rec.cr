lib LibFreetype
  struct FT_FaceRec
    num_faces : LibC::Long
    face_index : LibC::Long

    face_flags : LibC::Long
    style_flags : LibC::Long

    num_glyphs : LibC::Long

    family_name : LibC::Char*
    style_name : LibC::Char*

    num_fixed_sizes : LibC::Int
    available_sizes : FT_Bitmap_Size*

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
end
