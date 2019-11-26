module Freetype
  # FT_Outline wrapper.
  #
  # This structure is used to describe an outline to the scan-line converter.
  class Outline
    getter outline

    def initialize(@outline : LibFreetype::FT_Outline)
    end

    def n_contours
      @outline.n_contours
    end

    def contours
      Array(Int32).new do |i|
        @outline.contours[i]
      end
    end

    def n_points
      @outline.n_points
    end

    def points
      Array(Tuple(Int64, Int64)).new do |i|
        vec = @outline.points[i]
        {vec.x, vec.y}
      end
    end

    def tags
      Array(UInt8).new do |i|
        @outline.tags[i]
      end
    end

    def flags
      @outline.flags
    end

    def inside_border
      LibFreetype.FT_Outline_GetInsideBorder(pointerof(@outline))
    end

    def outside_border
      LibFreetype.FT_Outline_GetOutsideBorder(pointerof(@outline))
    end

    def bbox
      bbox = Pointer(LibFreetype::FT_BBox).malloc
      error = LibFreetype.FT_Outline_Get_BBox(pointerof(@outline), bbox)
      raise Error.new(error) if error > 0
      bbox.value
    end

    def cbox
      bbox = Pointer(LibFreetype::FT_BBox).malloc
      LibFreetype.FT_Outline_Get_CBox(pointerof(@outline), bbox)
      bbox.value
    end

    # Decompose the outline into a sequence of move, line, conic, and
    # cubic segments.
    #
    # `context`: Arbitrary contextual object which will be passed as
    #            the last parameter of all callbacks. Typically an
    #            object to be drawn to, but can be anything.
    #
    # `move_to`: Callback which will be passed an `FT_Vector`
    #            control point and the context. Called when outline
    #            needs to jump to a new path component.
    #
    # `line_to`: Callback which will be passed an `FT_Vector`
    #            control point and the context. Called to draw a
    #            straight line from the current position to the
    #            control point.
    #
    # `conic_to`: Callback which will be passed two `FT_Vector`
    #             control points and the context. Called to draw a
    #             second-order Bézier curve from the current
    #             position using the passed control points.
    #
    # `curve_to`: Callback which will be passed three `FT_Vector`
    #             control points and the context. Called to draw a
    #             third-order Bézier curve from the current position
    #             using the passed control points.
    #
    # `shift`: Passed to FreeType which will transform vectors via
    #          `x = (x << shift) - delta` and `y = (y << shift) - delta`
    #
    # `delta`: Passed to FreeType which will transform vectors via
    #          `x = (x << shift) - delta` and `y = (y << shift) - delta`
    def decompose(
      context = nil,
      move_to = nil,
      line_to = nil,
      conic_to = nil,
      cubic_to = nil,
      shift = 0,
      delta = 0
    )
      funcs = LibFreetype::FT_Outline_Funcs.new
      funcs.move_to = od_move_to_builder(move_to)
      funcs.line_to = od_line_to_builder(line_to)
      funcs.conic_to = od_conic_to_builder(conic_to)
      funcs.cubic_to = od_cubic_to_builder(cubic_to)
      funcs.shift = shift
      funcs.delta = delta.to_i64

      error = LibFreetype.FT_Outline_Decompose(pointerof(@outline), pointerof(funcs), context)
      raise Error.new(error) if error > 0
    end

    private def od_move_to_builder(cb = nil)
      if !cb
        ->(a : Pointer(LibFreetype::FT_Vector), b : Pointer(Void)) { 0 }
      else
        ->(a : Pointer(LibFreetype::FT_Vector), b : Pointer(Void)) { cb.call(a, b) || 0 }
      end
    end

    private def od_line_to_builder(cb = nil)
      if !cb
        ->(a : Pointer(LibFreetype::FT_Vector), b : Pointer(Void)) { 0 }
      else
        ->(a : Pointer(LibFreetype::FT_Vector), b : Pointer(Void)) { cb.call(a, b) || 0 }
      end
    end

    private def od_conic_to_builder(cb = nil)
      if !cb
        ->(a : Pointer(LibFreetype::FT_Vector),
           b : Pointer(LibFreetype::FT_Vector),
           c : Pointer(Void)) { 0 }
      else
        ->(a : Pointer(LibFreetype::FT_Vector),
           b : Pointer(LibFreetype::FT_Vector),
           c : Pointer(Void)) { cb.call(a, b, c) || 0 }
      end
    end

    private def od_cubic_to_builder(cb = nil)
      if !cb
        ->(a : Pointer(LibFreetype::FT_Vector),
           b : Pointer(LibFreetype::FT_Vector),
           c : Pointer(LibFreetype::FT_Vector),
           d : Pointer(Void)) { 0 }
      else
        ->(a : Pointer(LibFreetype::FT_Vector),
           b : Pointer(LibFreetype::FT_Vector),
           c : Pointer(LibFreetype::FT_Vector),
           d : Pointer(Void)) { cb.call(a, b, c, d) || 0 }
      end
    end
  end
end
