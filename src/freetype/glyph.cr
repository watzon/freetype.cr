module Freetype
  # FT_Glyph wrapper.
  #
  # The root glyph structure contains a given glyph image plus its advance
  # width in 16.16 fixed float format.
  class Glyph
    getter glyph

    def initialize(@glyph : LibFreetype::FT_Glyph)
    end

    # The format of the glyph's image.
    def format
      @glyph.value.format
    end

    # Stroke a given outline glyph object with a given stroker.
    #
    # **Note**:
    #
    #   The source glyph is untouched in case of error.
    def stroke(stroker : Stroker, destroy = false)
      destroy = destroy ? 1 : 0
      error = LibFreetype.FT_Glyph_Stroke(pointerof(@glyph), stroker.stroker, destroy)
      raise Error.new(error) if error > 0
    end

    # Convert a given glyph object to a bitmap glyph object.
    #
    # **Note**:
    #
    #   This function does nothing if the glyph format isn't scalable.
    #   The glyph image is translated with the 'origin' vector before
    #   rendering.
    def to_bitmap(mode, origin, destroy = false)
      destroy = destroy ? 1 : 0
      origin = pointerof(origin) unless origin.is_a?(Pointer)
      error = LibFreetype.FT_Glyph_To_Bitmap(pointerof(@glyph), mode, origin, destroy)
      raise Error.new(error) if error > 0
      BitmapGlyph.new(@glyph)
    end

    # Return an outline's 'control box'. The control box encloses all the
    # outline's points, including Bezier control points. Though it coincides
    # with the exact bounding box for most glyphs, it can be slightly larger
    # in some situations (like when rotating an outline which contains Bezier
    # outside arcs).
    #
    # Computing the control box is very fast, while getting the bounding box
    # can take much more time as it needs to walk over all segments and arcs
    # in the outline. To get the latter, you can use the 'ftbbox' component
    # which is dedicated to this single task.
    #
    # **Note**:
    #
    #   Coordinates are relative to the glyph origin, using the y upwards
    #   convention.
    #
    #   If the glyph has been loaded with FT_LOAD_NO_SCALE, 'bbox_mode' must be
    #   set to FT_GLYPH_BBOX_UNSCALED to get unscaled font units in 26.6 pixel
    #   format. The value FT_GLYPH_BBOX_SUBPIXELS is another name for this
    #   constant.
    #
    #   Note that the maximum coordinates are exclusive, which means that one
    #   can compute the width and height of the glyph image (be it in integer
    #   or 26.6 pixels) as:
    #
    #   width  = bbox.xMax - bbox.xMin;
    #   height = bbox.yMax - bbox.yMin;
    #
    #   Note also that for 26.6 coordinates, if 'bbox_mode' is set to
    #   FT_GLYPH_BBOX_GRIDFIT, the coordinates will also be grid-fitted, which
    #   corresponds to:
    #
    #   bbox.xMin = FLOOR(bbox.xMin);
    #   bbox.yMin = FLOOR(bbox.yMin);
    #   bbox.xMax = CEILING(bbox.xMax);
    #   bbox.yMax = CEILING(bbox.yMax);
    #
    #   To get the bbox in pixel coordinates, set 'bbox_mode' to
    #   FT_GLYPH_BBOX_TRUNCATE.
    #
    #   To get the bbox in grid-fitted pixel coordinates, set 'bbox_mode' to
    #   FT_GLYPH_BBOX_PIXELS.
    def cbox(bbox_mode)
      bbox = Pointer(LibFreetype::FT_BBox).malloc
      error = LibFreetype.FT_Glyph_Get_CBox(pointerof(@glyph), bbox_mode, bbox)
      raise Error.new(error) if error > 0
      BBox.new(bbox.value)
    end

    def finalize
      LibFreetype.FT_Done_Glyph(@glyph)
    end
  end
end
