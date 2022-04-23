lib LibFreetype
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
end
