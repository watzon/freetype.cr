module Freetype
  # FT_BitmapGlyph wrapper.
  #
  # A structure used for bitmap glyph images. This really is a 'sub-class' of
  # FT_GlyphRec.
  class BitmapGlyph
    getter bitmap_glyph

    def initialize(@bitmap_glyph : LibFreetype::FT_BitmapGlyph)
    end

    # The format of the glyph's image.
    def format
      @bitmap_glyph.value.format
    end

    # A descriptor for the bitmap.
    def bitmap
      @bitmap_glyph.value.bitmap
    end

    # The left-side bearing, i.e., the horizontal distance from the
    # current pen position to the left border of the glyph bitmap.
    def left
      @bitmap_glyph.value.left
    end

    # The top-side bearing, i.e., the vertical distance from the
    # current pen position to the top border of the glyph bitmap.
    # This distance is positive for upwards y!
    def top
      @bitmap_glyph.value.top
    end
  end
end
