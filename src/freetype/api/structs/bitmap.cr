lib LibFreetype
  struct FT_Bitmap
    rows : LibC::UInt
    width : LibC::UInt
    pitch : LibC::Int
    buffer : LibC::Char*
    num_grays : LibC::Short
    pixel_mode : LibC::Char
    palette_mode : LibC::Char
    palette : Void*
  end
end
