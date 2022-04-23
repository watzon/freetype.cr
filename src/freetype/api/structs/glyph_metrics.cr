lib LibFreetype
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
end
