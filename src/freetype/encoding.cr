module Freetype
  enum Encoding
    None = LibFreetype::FT_Encoding::FT_ENCODING_NONE

    MsSymbol = LibFreetype::FT_Encoding::FT_ENCODING_MS_SYMBOL
    Unicode = LibFreetype::FT_Encoding::FT_ENCODING_UNICODE

    Sjis = LibFreetype::FT_Encoding::FT_ENCODING_SJIS
    Prc = LibFreetype::FT_Encoding::FT_ENCODING_PRC
    Big5 = LibFreetype::FT_Encoding::FT_ENCODING_BIG5
    Wansung = LibFreetype::FT_Encoding::FT_ENCODING_WANSUNG
    Johab = LibFreetype::FT_Encoding::FT_ENCODING_JOHAB

    AdobeStandard = LibFreetype::FT_Encoding::FT_ENCODING_ADOBE_STANDARD
    AdobeExpert = LibFreetype::FT_Encoding::FT_ENCODING_ADOBE_EXPERT
    AdobeCustom = LibFreetype::FT_Encoding::FT_ENCODING_ADOBE_CUSTOM
    AdobeLatin1 = LibFreetype::FT_Encoding::FT_ENCODING_ADOBE_LATIN_1

    AdobeOldLatin2 = LibFreetype::FT_Encoding::FT_ENCODING_OLD_LATIN_2

    AppleRoman = LibFreetype::FT_Encoding::FT_ENCODING_APPLE_ROMAN
  end
end
