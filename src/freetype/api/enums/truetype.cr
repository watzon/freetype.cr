require "./truetype/*"

lib LibFreetype
  TT_PLATFORM_APPLE_UNICODE = 0
  TT_PLATFORM_MACINTOSH     = 1
  TT_PLATFORM_ISO           = 2 # deprecated
  TT_PLATFORM_MICROSOFT     = 3
  TT_PLATFORM_CUSTOM        = 4
  TT_PLATFORM_ADOBE         = 7 # artificial

  TT_APPLE_ID_DEFAULT          = 0 # Unicode 1.0
  TT_APPLE_ID_UNICODE_1_1      = 1 # specify Hangul at U+34xx
  TT_APPLE_ID_ISO_10646        = 2 # deprecated
  TT_APPLE_ID_UNICODE_2_0      = 3 # or later
  TT_APPLE_ID_UNICODE_32       = 4 # 2.0 or later, full repertoire
  TT_APPLE_ID_VARIANT_SELECTOR = 5 # variation selector data
  TT_APPLE_ID_FULL_UNICODE     = 6 # used with type 13 cmaps

  TT_MAC_ID_ROMAN               =  0
  TT_MAC_ID_JAPANESE            =  1
  TT_MAC_ID_TRADITIONAL_CHINESE =  2
  TT_MAC_ID_KOREAN              =  3
  TT_MAC_ID_ARABIC              =  4
  TT_MAC_ID_HEBREW              =  5
  TT_MAC_ID_GREEK               =  6
  TT_MAC_ID_RUSSIAN             =  7
  TT_MAC_ID_RSYMBOL             =  8
  TT_MAC_ID_DEVANAGARI          =  9
  TT_MAC_ID_GURMUKHI            = 10
  TT_MAC_ID_GUJARATI            = 11
  TT_MAC_ID_ORIYA               = 12
  TT_MAC_ID_BENGALI             = 13
  TT_MAC_ID_TAMIL               = 14
  TT_MAC_ID_TELUGU              = 15
  TT_MAC_ID_KANNADA             = 16
  TT_MAC_ID_MALAYALAM           = 17
  TT_MAC_ID_SINHALESE           = 18
  TT_MAC_ID_BURMESE             = 19
  TT_MAC_ID_KHMER               = 20
  TT_MAC_ID_THAI                = 21
  TT_MAC_ID_LAOTIAN             = 22
  TT_MAC_ID_GEORGIAN            = 23
  TT_MAC_ID_ARMENIAN            = 24
  TT_MAC_ID_MALDIVIAN           = 25
  TT_MAC_ID_SIMPLIFIED_CHINESE  = 25
  TT_MAC_ID_TIBETAN             = 26
  TT_MAC_ID_MONGOLIAN           = 27
  TT_MAC_ID_GEEZ                = 28
  TT_MAC_ID_SLAVIC              = 29
  TT_MAC_ID_VIETNAMESE          = 30
  TT_MAC_ID_SINDHI              = 31
  TT_MAC_ID_UNINTERP            = 32

  TT_ISO_ID_7BIT_ASCII = 0
  TT_ISO_ID_10646      = 1
  TT_ISO_ID_8859_1     = 2

  TT_MS_ID_SYMBOL_CS  =  0
  TT_MS_ID_UNICODE_CS =  1
  TT_MS_ID_SJIS       =  2
  TT_MS_ID_PRC        =  3
  TT_MS_ID_BIG_5      =  4
  TT_MS_ID_WANSUNG    =  5
  TT_MS_ID_JOHAB      =  6
  TT_MS_ID_UCS_4      = 10

  # this value is deprecated
  TT_MS_ID_GB2312 = TT_MS_ID_PRC

  TT_ADOBE_ID_STANDARD = 0
  TT_ADOBE_ID_EXPERT   = 1
  TT_ADOBE_ID_CUSTOM   = 2
  TT_ADOBE_ID_LATIN_1  = 3

  TT_NAME_ID_COPYRIGHT      = 0
  TT_NAME_ID_FONT_FAMILY    = 1
  TT_NAME_ID_FONT_SUBFAMILY = 2
  TT_NAME_ID_UNIQUE_ID      = 3
  TT_NAME_ID_FULL_NAME      = 4
  TT_NAME_ID_VERSION_STRING = 5
  TT_NAME_ID_PS_NAME        = 6
  TT_NAME_ID_TRADEMARK      = 7

  # the following values are from the OpenType spec
  TT_NAME_ID_MANUFACTURER =  8
  TT_NAME_ID_DESIGNER     =  9
  TT_NAME_ID_DESCRIPTION  = 10
  TT_NAME_ID_VENDOR_URL   = 11
  TT_NAME_ID_DESIGNER_URL = 12
  TT_NAME_ID_LICENSE      = 13
  TT_NAME_ID_LICENSE_URL  = 14
  # number 15 is reserved
  TT_NAME_ID_TYPOGRAPHIC_FAMILY    = 16
  TT_NAME_ID_TYPOGRAPHIC_SUBFAMILY = 17
  TT_NAME_ID_MAC_FULL_NAME         = 18

  # The following code is new as of 2000-01-21
  TT_NAME_ID_SAMPLE_TEXT = 19

  # This is new in OpenType 1.3
  TT_NAME_ID_CID_FINDFONT_NAME = 20

  # This is new in OpenType 1.5
  TT_NAME_ID_WWS_FAMILY    = 21
  TT_NAME_ID_WWS_SUBFAMILY = 22

  # This is new in OpenType 1.7
  TT_NAME_ID_LIGHT_BACKGROUND = 23
  TT_NAME_ID_DARK_BACKGROUND  = 24

  # This is new in OpenType 1.8
  TT_NAME_ID_VARIATIONS_PREFIX = 25

  # these two values are deprecated
  TT_NAME_ID_PREFERRED_FAMILY    = TT_NAME_ID_TYPOGRAPHIC_FAMILY
  TT_NAME_ID_PREFERRED_SUBFAMILY = TT_NAME_ID_TYPOGRAPHIC_SUBFAMILY
end
