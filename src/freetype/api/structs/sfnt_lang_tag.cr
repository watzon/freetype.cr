lib LibFreetype
  struct FT_SfntLangTag
    string : LibC::Char* # this string is *not* null-terminated!
    string_len : LibC::UInt
  end
end
