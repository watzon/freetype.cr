lib LibFreetype
  struct FT_SfntName
    platform_id : LibC::UShort
    encoding_id : LibC::UShort
    language_id : LibC::UShort
    name_id : LibC::UShort

    string : LibC::Char* # this string is *not* null-terminated!
    string_len : LibC::UInt
  end
end
