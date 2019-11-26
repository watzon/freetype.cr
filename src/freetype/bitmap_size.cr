module Freetype
  # FT_Bitmap_Size wrapper
  #
  # This structure models the metrics of a bitmap strike (i.e., a set of glyphs
  # for a given point size and resolution) in a bitmap font. It is used for the
  # 'available_sizes' field of Face.
  #
  # **Note**
  #
  # Windows FNT: The nominal size given in a FNT font is not reliable. Thus
  # when the driver finds it incorrect, it sets 'size' to some calculated
  # values and sets 'x_ppem' and 'y_ppem' to the pixel width and height given
  # in the font, respectively.
  #
  # TrueType embedded bitmaps: 'size', 'width', and 'height' values are not
  # contained in the bitmap strike itself. They are computed from the global
  # font parameters.
  class BitmapSize
    getter bitmap_size

    def initialize(@bitmap_size : LibFreetype::FT_Bitmap_Size)
    end

    # The vertical distance, in pixels, between two consecutive
    # baselines. It is always positive.
    def height
      @bitmap_size.height
    end

    # The average width, in pixels, of all glyphs in the strike.
    def width
      @bitmap_size.width
    end

    # The nominal size of the strike in 26.6 fractional points. This
    # field is not very useful.
    def size
      @bitmap_size.size
    end

    # The horizontal ppem (nominal width) in 26.6 fractional
    # pixels.
    def x_ppem
      @bitmap_size.x_ppem
    end

    # The vertical ppem (nominal width) in 26.6 fractional
    # pixels.
    def y_ppem
      @bitmap_size.y_ppem
    end
  end
end
