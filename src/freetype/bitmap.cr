module Freetype
  # Wrapper for `LibFreetype::FT_Bitmap`
  class Bitmap
    getter bitmap

    def initialize(@bitmap : LibFreetype::FT_Bitmap)
    end

    # The number of bitmap rows.
    def rows
      @bitmap.rows
    end

    # The number of pixels in each bitmap row.
    def width
      @bitmap.width
    end

    # The pitch's absolute value is the number of bytes taken by one bitmap row, including padding.
    # However, the pitch is positive when the bitmap has a ‘down’ flow, and negative when it has
    # an ‘up’ flow. In all cases, the pitch is an offset to add to a bitmap pointer in order
    # to go down one row.
    #
    # Note that ‘padding’ means the alignment of a bitmap to a byte border, and FreeType functions
    # normally align to the smallest possible integer value.
    #
    # For the B/W rasterizer, pitch is always an even number.
    #
    # To change the pitch of a bitmap (say, to make it a multiple of 4), use FT_Bitmap_Convert.
    # Alternatively, you might use callback functions to directly render to the application's
    # surface; see the file example2.cpp in the tutorial for a demonstration.
    def pitch
      @bitmap.pitch
    end

    # A typeless pointer to the bitmap buffer. This value should be aligned on 32-bit boundaries
    # in most cases.
    def buffer
      Array(UInt8).new(rows * pitch) do |i|
        @bitmap.buffer[i]
      end
    end

    # This field is only used with FT_PIXEL_MODE_GRAY; it gives the number of gray levels used
    # in the bitmap.
    def num_grays
      @bitmap.num_grays
    end

    # The pixel mode, i.e., how pixel bits are stored. See FT_Pixel_Mode for possible values.
    def pixel_mode
      @bitmap.pixel_mode
    end

    # This field is intended for paletted pixel modes; it indicates how the palette is stored.
    # Not used currently.
    def palette_mode
      @bitmap.palette_mode
    end

    # A typeless pointer to the bitmap palette; this field is intended for paletted pixel modes.
    # Not used currently.
    def palette
      @bitmap.palette
    end

    forward_missing_to buffer
  end
end
