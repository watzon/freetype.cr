lib LibFreetype
  struct FT_CharMapRec
    face : FT_Face
    encoding : FT_Encoding
    platform_id : LibC::UShort
    encoding_id : LibC::UShort
  end
end
