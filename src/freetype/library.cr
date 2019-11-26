module Freetype
  class Library
    getter library

    def initialize(@library : LibFreetype::FT_Library)
    end

    def finalize
      LibFreetype.FT_Done_FreeType(@library)
    end
  end
end
