lib LibFreetype
  struct FT_GlyphSlotRec
    library : FT_Library
    face : FT_Face
    next : FT_GlyphSlot
    glyph_index : LibC::UInt
    generic : FT_Generic

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
end
