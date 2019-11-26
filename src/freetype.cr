require "./freetype/api"
require "./freetype/*"

module Freetype
  def self.version
    major = uninitialized Int32
    minor = uninitialized Int32
    patch = uninitialized Int32

    library = Freetype.get_handle
    LibFreetype.FT_Library_Version(library, pointerof(major), pointerof(minor), pointerof(patch))

    {major, minor, patch}
  end

  def self.get_handle
    library = Pointer(LibFreetype::FT_Library).malloc
    LibFreetype.FT_Init_FreeType(library)
    library.value
  end
end
