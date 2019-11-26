module Freetype
  # FT_GlyphSlot wrapper.
  #
  # FreeType root glyph slot class structure. A glyph slot is a container where
  # individual glyphs can be loaded, be they in outline or bitmap format.
  class GlyphSlot
    getter glyph_slot

    def initialize(@glyph_slot : LibFreetype::FT_GlyphSlot)
    end

    # A function used to extract a glyph image from a slot. Note that the
    # created FT_Glyph object must be released with FT_Done_Glyph.
    def glyph
      aglyph = Pointer(LibFreetype::FT_Glyph).malloc
      error = LibFreetype.FT_Get_Glyph(@glyph_slot, aglyph)
      raise Error.new(error) if error > 0
      Glyph.new(aglyph.value)
    end

    # This field is used as a bitmap descriptor when the slot format
    # is FT_GLYPH_FORMAT_BITMAP. Note that the address and content of
    # the bitmap buffer can change between calls of FT_Load_Glyph and
    # a few other functions.
    def bitmap
      Bitmap.new(@glyph_slot.value.bitmap)
    end

    # The metrics of the last loaded glyph in the slot. The returned
    # values depend on the last load flags (see the FT_Load_Glyph API
    # function) and can be expressed either in 26.6 fractional pixels or font
    # units. Note that even when the glyph image is transformed, the metrics
    # are not.
    def metrics
      GlyphMetrics.new(@glyph_slot.value.metrics)
    end

    # In some cases (like some font tools), several glyph slots per
    # face object can be a good thing. As this is rare, the glyph slots
    # are listed through a direct, single-linked list using its 'next'
    # field.
    def next
      GlyphSlot.new(@glyph_slot.value.next)
    end

    # This shorthand is, depending on FT_LOAD_IGNORE_TRANSFORM, the
    # transformed advance width for the glyph (in 26.6 fractional
    # pixel format). As specified with FT_LOAD_VERTICAL_LAYOUT, it
    # uses either the 'horiAdvance' or the 'vertAdvance' value of
    # 'metrics' field.
    def advance
      @glyph_slot.value.advance
    end

    # # The outline descriptor for the current glyph image if its
    # format is FT_GLYPH_FORMAT_OUTLINE. Once a glyph is loaded,
    # 'outline' can be transformed, distorted, embolded,
    # etc. However, it must not be freed.
    def outline
      @glyph_slot.value.outline
    end

    # This field indicates the format of the image contained in the
    # glyph slot. Typically FT_GLYPH_FORMAT_BITMAP,
    # FT_GLYPH_FORMAT_OUTLINE, or FT_GLYPH_FORMAT_COMPOSITE, but
    # others are possible.
    def format
      @glyph_slot.value.format
    end

    # This is the bitmap's top bearing expressed in integer
    # pixels. Remember that this is the distance from the
    # baseline to the top-most glyph scanline, upwards y
    # coordinates being positive.
    def bitmap_top
      @glyph_slot.value.bitmap_top
    end

    # This is the bitmap's left bearing expressed in integer
    # pixels. Of course, this is only valid if the format is
    # FT_GLYPH_FORMAT_BITMAP.
    def bitmap_left
      @glyph_slot.value.bitmap_left
    end

    # The advance width of the unhinted glyph. Its value
    # is expressed in 16.16 fractional pixels, unless
    # FT_LOAD_LINEAR_DESIGN is set when loading the glyph.
    # This field can be important to perform correct
    # WYSIWYG layout. Only relevant for outline glyphs.
    def linear_hori_advance
      @glyph_slot.value.linearHoriAdvance
    end

    # The advance height of the unhinted glyph. Its value
    # is expressed in 16.16 fractional pixels, unless
    # FT_LOAD_LINEAR_DESIGN is set when loading the glyph.
    # This field can be important to perform correct
    # WYSIWYG layout. Only relevant for outline glyphs.
    def linear_vert_advance
      @glyph_slot.value.linearVertAdvance
    end
  end
end
