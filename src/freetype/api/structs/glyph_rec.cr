lib LibFreetype
  struct FT_GlyphRec
    library : FT_Library
    # clazz : FT_Glyph_Class* # Private
    format : FT_Glyph_Format
    advance : FT_Vector
  end
end
