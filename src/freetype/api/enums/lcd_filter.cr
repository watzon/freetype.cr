lib LibFreetype
  FT_LCD_FILTER_NONE    =  0
  FT_LCD_FILTER_DEFAULT =  1
  FT_LCD_FILTER_LIGHT   =  2
  FT_LCD_FILTER_LEGACY1 =  3
  FT_LCD_FILTER_LEGACY  = 16

  FT_LCD_FILTER_MAX = 17

  enum FT_LcdFilter
    NONE    = FT_LCD_FILTER_NONE
    DEFAULT = FT_LCD_FILTER_DEFAULT
    LIGHT   = FT_LCD_FILTER_LIGHT
    LEGACY1 = FT_LCD_FILTER_LEGACY1
    LEGACY  = FT_LCD_FILTER_LEGACY

    MAX = FT_LCD_FILTER_MAX
  end
end
