module Freetype
  # The size metrics structure gives the metrics of a size object.
  #
  # **Note**
  #
  # The scaling values, if relevant, are determined first during a size
  # changing operation. The remaining fields are then set by the driver. For
  # scalable formats, they are usually set to scaled values of the
  # corresponding fields in Face.
  #
  # Note that due to glyph hinting, these values might not be exact for certain
  # fonts. Thus they must be treated as unreliable with an error margin of at
  # least one pixel!
  #
  # Indeed, the only way to get the exact metrics is to render all glyphs. As
  # this would be a definite performance hit, it is up to client applications
  # to perform such computations.
  #
  # The SizeMetrics structure is valid for bitmap fonts also.
  class SizeMetrics
    getter size_metrics

    def initialize(@size_metrics : LibFreetype::FT_Size_Metrics)
    end

    # The width of the scaled EM square in pixels, hence the term
    # 'ppem' (pixels per EM). It is also referred to as 'nominal
    # width'.
    def x_ppem
      @size_metrics.x_ppem
    end

    # The height of the scaled EM square in pixels, hence the term
    # 'ppem' (pixels per EM). It is also referred to as 'nominal
    # height'.
    def y_ppem
      @size_metrics.y_ppem
    end

    # A 16.16 fractional scaling value used to convert horizontal
    # metrics from font units to 26.6 fractional pixels. Only
    # relevant for scalable font formats.
    def x_scale
      @size_metrics.x_scale
    end

    # A 16.16 fractional scaling value used to convert vertical
    # metrics from font units to 26.6 fractional pixels. Only
    # relevant for scalable font formats.
    def y_scale
      @size_metrics.y_scale
    end

    # The ascender in 26.6 fractional pixels. See Face for the
    # details.
    def ascender
      @size_metrics.ascender
    end

    # The descender in 26.6 fractional pixels. See Face for the
    # details.
    def descender
      @size_metrics.descender
    end

    # The height in 26.6 fractional pixels. See Face for the details.
    def height
      @size_metrics.height
    end

    # The maximal advance width in 26.6 fractional pixels. See
    # Face for the details.
    def max_advance
      @size_metrics.max_advance
    end
  end
end
