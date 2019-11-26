module Freetype
  # FT_BBox wrapper.
  #
  # A structure used to hold an outline's bounding box, i.e., the coordinates
  # of its extrema in the horizontal and vertical directions.
  #
  # **Note**
  #
  # The bounding box is specified with the coordinates of the lower left and
  # the upper right corner. In PostScript, those values are often called
  # (llx,lly) and (urx,ury), respectively.
  #
  # If `ymin` is negative, this value gives the glyph's descender. Otherwise,
  # the glyph doesn't descend below the baseline. Similarly, if `ymax` is
  # positive, this value gives the glyph's ascender.
  #
  # `xmin` gives the horizontal distance from the glyph's origin to the left
  # edge of the glyph's bounding box. If `xmin` is negative, the glyph
  # extends to the left of the origin.
  class BBox
    getter bbox

    def initialize(@bbox : LibFreetype::FT_BBox)
    end

    # The horizontal minimum (left-most).
    def xmin
      @bbox.xMin
    end

    # The vertical minimum (bottom-most).
    def ymin
      @bbox.yMin
    end

    # The horizontal maximum (right-most).
    def xmax
      @bbox.xMax
    end

    # The vertical maximum (top-most).
    def ymax
      @bbox.yMax
    end
  end
end
