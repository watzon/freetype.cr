module Freetype
  # A structure used to model the metrics of a single glyph. The values are
  # expressed in 26.6 fractional pixel format; if the flag FT_LOAD_NO_SCALE has
  # been used while loading the glyph, values are expressed in font units
  # instead.
  #
  # **Note**
  #
  # If not disabled with FT_LOAD_NO_HINTING, the values represent dimensions of
  # the hinted glyph (in case hinting is applicable).
  #
  # Stroking a glyph with an outside border does not increase ‘horiAdvance’ or
  # ‘vertAdvance’; you have to manually adjust these values to account for the
  # added width and height.
  class GlyphMetrics
    def initialize(@glyph_metrics : LibFreetype::FT_Glyph_Metrics)
    end

    # The glyph's width.
    def width
      @glyph_metrics.width
    end

    # The glyph's height.
    def height
      @glyph_metrics.height
    end

    # Left side bearing for horizontal layout.
    def hori_bearing_x
      @glyph_metrics.horiBearingX
    end

    # Top side bearing for horizontal layout.
    def hori_bearing_y
      @glyph_metrics.horiBearingY
    end

    # Advance width for horizontal layout.
    def hori_advance
      @glyph_metrics.horiAdvance
    end

    # Left side bearing for vertical layout.
    def vert_bearing_x
      @glyph_metrics.vertBearingX
    end

    # Top side bearing for vertical layout. Larger positive values
    # mean further below the vertical glyph origin.
    def vert_bearing_y
      @glyph_metrics.vertBearingY
    end

    # Advance height for vertical layout. Positive values mean the
    # glyph has a positive advance downward.
    def vert_advance
      @glyph_metrics.vertAdvance
    end
  end
end
