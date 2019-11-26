@[Link("freetype")]
lib LibFreetype
  FT_PIXEL_MODE_NONE = 0
  FT_PIXEL_MODE_MONO = 1
  FT_PIXEL_MODE_GRAY = 2
  FT_PIXEL_MODE_GRAY2 = 3
  FT_PIXEL_MODE_GRAY4 = 4
  FT_PIXEL_MODE_LCD = 5
  FT_PIXEL_MODE_LCD_V = 6
  FT_PIXEL_MODE_MAX = 7
  FT_PIXEL_MODE_BGRA = 8

  FT_GLYPH_FORMAT_NONE = 0
  FT_GLYPH_FORMAT_COMPOSITE = 1668246896
  FT_GLYPH_FORMAT_BITMAP = 1651078259
  FT_GLYPH_FORMAT_OUTLINE = 1869968492
  FT_GLYPH_FORMAT_PLOTTER = 1886154612

  FT_ENCODING_NONE = 0

  FT_ENCODING_MS_SYMBOL = 1937337698
  FT_ENCODING_UNICODE = 1970170211

  FT_ENCODING_SJIS = 1936353651
  FT_ENCODING_PRC = 1734484000
  FT_ENCODING_BIG5 = 1651074869
  FT_ENCODING_WANSUNG = 2002873971
  FT_ENCODING_JOHAB = 1785686113

  FT_ENCODING_GB2312 = 1734484000
  FT_ENCODING_MS_SJIS = 1936353651
  FT_ENCODING_MS_GB2312 = 1734484000
  FT_ENCODING_MS_BIG5 = 1651074869
  FT_ENCODING_MS_WANSUNG = 2002873971
  FT_ENCODING_MS_JOHAB = 1785686113

  FT_ENCODING_ADOBE_STANDARD = 1094995778
  FT_ENCODING_ADOBE_EXPERT = 1094992453
  FT_ENCODING_ADOBE_CUSTOM = 1094992451
  FT_ENCODING_ADOBE_LATIN_1 = 1818326065

  FT_ENCODING_OLD_LATIN_2 = 1818326066
  FT_ENCODING_APPLE_ROMAN = 1634889070

  FT_FACE_FLAG_SCALABLE          = 1 <<  0
  FT_FACE_FLAG_FIXED_SIZES       = 1 <<  1
  FT_FACE_FLAG_FIXED_WIDTH       = 1 <<  2
  FT_FACE_FLAG_SFNT              = 1 <<  3
  FT_FACE_FLAG_HORIZONTAL        = 1 <<  4
  FT_FACE_FLAG_VERTICAL          = 1 <<  5
  FT_FACE_FLAG_KERNING           = 1 <<  6
  FT_FACE_FLAG_FAST_GLYPHS       = 1 <<  7
  FT_FACE_FLAG_MULTIPLE_MASTERS  = 1 <<  8
  FT_FACE_FLAG_GLYPH_NAMES       = 1 <<  9
  FT_FACE_FLAG_EXTERNAL_STREAM   = 1 << 10
  FT_FACE_FLAG_HINTER            = 1 << 11
  FT_FACE_FLAG_CID_KEYED         = 1 << 12
  FT_FACE_FLAG_TRICKY            = 1 << 13
  FT_FACE_FLAG_COLOR             = 1 << 14
  FT_FACE_FLAG_VARIATION         = 1 << 15

  FT_STYLE_FLAG_ITALIC  = 1 << 0
  FT_STYLE_FLAG_BOLD    = 1 << 1

  FT_OPEN_MEMORY    = 0x1
  FT_OPEN_STREAM    = 0x2
  FT_OPEN_PATHNAME  = 0x4
  FT_OPEN_DRIVER    = 0x8
  FT_OPEN_PARAMS    = 0x10

  FT_LOAD_DEFAULT                      = 0x0
  FT_LOAD_NO_SCALE                     = 0x1
  FT_LOAD_NO_HINTING                   = 0x2
  FT_LOAD_RENDER                       = 0x4
  FT_LOAD_NO_BITMAP                    = 0x8
  FT_LOAD_VERTICAL_LAYOUT              = 0x10
  FT_LOAD_FORCE_AUTOHINT               = 0x20
  FT_LOAD_CROP_BITMAP                  = 0x40
  FT_LOAD_PEDANTIC                     = 0x80
  FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH  = 0x200
  FT_LOAD_NO_RECURSE                   = 0x400
  FT_LOAD_IGNORE_TRANSFORM             = 0x800
  FT_LOAD_MONOCHROME                   = 0x1000
  FT_LOAD_LINEAR_DESIGN                = 0x2000
  FT_LOAD_NO_AUTOHINT                  = 0x8000
  FT_LOAD_COLOR                        = 0x100000
  FT_LOAD_COMPUTE_METRICS              = 0x200000
  FT_LOAD_BITMAP_METRICS_ONLY          = 0x400000

  FT_RENDER_MODE_NORMAL = 0
  FT_RENDER_MODE_LIGHT = 1
  FT_RENDER_MODE_MONO = 2
  FT_RENDER_MODE_LCD = 3
  FT_RENDER_MODE_LCD_V = 4

  FT_RENDER_MODE_MAX = 5

  FT_SIZE_REQUEST_TYPE_NOMINAL = 0
  FT_SIZE_REQUEST_TYPE_REAL_DIM = 1
  FT_SIZE_REQUEST_TYPE_BBOX = 2
  FT_SIZE_REQUEST_TYPE_CELL = 3
  FT_SIZE_REQUEST_TYPE_SCALES = 4

  FT_SIZE_REQUEST_TYPE_MAX = 5

  FT_LOAD_TARGET_NORMAL  = ((FT_RENDER_MODE_NORMAL & 15) << 16)
  FT_LOAD_TARGET_LIGHT   = ((FT_RENDER_MODE_LIGHT & 15) << 16)
  FT_LOAD_TARGET_MONO    = ((FT_RENDER_MODE_MONO & 15) << 16)
  FT_LOAD_TARGET_LCD     = ((FT_RENDER_MODE_LCD & 15) << 16)
  FT_LOAD_TARGET_LCD_V   = ((FT_RENDER_MODE_LCD_V & 15) << 16)

  FT_SUBGLYPH_FLAG_ARGS_ARE_WORDS      =     1
  FT_SUBGLYPH_FLAG_ARGS_ARE_XY_VALUES  =     2
  FT_SUBGLYPH_FLAG_ROUND_XY_TO_GRID    =     4
  FT_SUBGLYPH_FLAG_SCALE               =     8
  FT_SUBGLYPH_FLAG_XY_SCALE            =  0x40
  FT_SUBGLYPH_FLAG_2X2                 =  0x80
  FT_SUBGLYPH_FLAG_USE_MY_METRICS      = 0x200

  FT_FSTYPE_INSTALLABLE_EMBEDDING         = 0x0000
  FT_FSTYPE_RESTRICTED_LICENSE_EMBEDDING  = 0x0002
  FT_FSTYPE_PREVIEW_AND_PRINT_EMBEDDING   = 0x0004
  FT_FSTYPE_EDITABLE_EMBEDDING            = 0x0008
  FT_FSTYPE_NO_SUBSETTING                 = 0x0100
  FT_FSTYPE_BITMAP_EMBEDDING_ONLY         = 0x0200

  FT_PALETTE_FOR_LIGHT_BACKGROUND  = 0x01
  FT_PALETTE_FOR_DARK_BACKGROUND   = 0x02

  FT_KERNING_DEFAULT = 0
  FT_KERNING_UNFITTED = 1
  FT_KERNING_UNSCALED = 2

  FT_GLYPH_BBOX_UNSCALED  = 0
  FT_GLYPH_BBOX_SUBPIXELS = 0
  FT_GLYPH_BBOX_GRIDFIT   = 1
  FT_GLYPH_BBOX_TRUNCATE  = 2
  FT_GLYPH_BBOX_PIXELS    = 3

  FT_STROKER_BORDER_LEFT = 0
  FT_STROKER_BORDER_RIGHT = 1

  FT_STROKER_LINECAP_BUTT = 0
  FT_STROKER_LINECAP_ROUND = 1
  FT_STROKER_LINECAP_SQUARE = 2

  FT_STROKER_LINEJOIN_ROUND          = 0
  FT_STROKER_LINEJOIN_BEVEL          = 1
  FT_STROKER_LINEJOIN_MITER_VARIABLE = 2
  FT_STROKER_LINEJOIN_MITER          = 2
  FT_STROKER_LINEJOIN_MITER_FIXED    = 3

  TT_PLATFORM_APPLE_UNICODE  = 0
  TT_PLATFORM_MACINTOSH      = 1
  TT_PLATFORM_ISO            = 2 # deprecated
  TT_PLATFORM_MICROSOFT      = 3
  TT_PLATFORM_CUSTOM         = 4
  TT_PLATFORM_ADOBE          = 7 # artificial

  TT_APPLE_ID_DEFAULT           = 0 # Unicode 1.0
  TT_APPLE_ID_UNICODE_1_1       = 1 # specify Hangul at U+34xx
  TT_APPLE_ID_ISO_10646         = 2 # deprecated
  TT_APPLE_ID_UNICODE_2_0       = 3 # or later
  TT_APPLE_ID_UNICODE_32        = 4 # 2.0 or later, full repertoire
  TT_APPLE_ID_VARIANT_SELECTOR  = 5 # variation selector data
  TT_APPLE_ID_FULL_UNICODE      = 6 # used with type 13 cmaps

  TT_MAC_ID_ROMAN                =  0
  TT_MAC_ID_JAPANESE             =  1
  TT_MAC_ID_TRADITIONAL_CHINESE  =  2
  TT_MAC_ID_KOREAN               =  3
  TT_MAC_ID_ARABIC               =  4
  TT_MAC_ID_HEBREW               =  5
  TT_MAC_ID_GREEK                =  6
  TT_MAC_ID_RUSSIAN              =  7
  TT_MAC_ID_RSYMBOL              =  8
  TT_MAC_ID_DEVANAGARI           =  9
  TT_MAC_ID_GURMUKHI             = 10
  TT_MAC_ID_GUJARATI             = 11
  TT_MAC_ID_ORIYA                = 12
  TT_MAC_ID_BENGALI              = 13
  TT_MAC_ID_TAMIL                = 14
  TT_MAC_ID_TELUGU               = 15
  TT_MAC_ID_KANNADA              = 16
  TT_MAC_ID_MALAYALAM            = 17
  TT_MAC_ID_SINHALESE            = 18
  TT_MAC_ID_BURMESE              = 19
  TT_MAC_ID_KHMER                = 20
  TT_MAC_ID_THAI                 = 21
  TT_MAC_ID_LAOTIAN              = 22
  TT_MAC_ID_GEORGIAN             = 23
  TT_MAC_ID_ARMENIAN             = 24
  TT_MAC_ID_MALDIVIAN            = 25
  TT_MAC_ID_SIMPLIFIED_CHINESE   = 25
  TT_MAC_ID_TIBETAN              = 26
  TT_MAC_ID_MONGOLIAN            = 27
  TT_MAC_ID_GEEZ                 = 28
  TT_MAC_ID_SLAVIC               = 29
  TT_MAC_ID_VIETNAMESE           = 30
  TT_MAC_ID_SINDHI               = 31
  TT_MAC_ID_UNINTERP             = 32

  TT_ISO_ID_7BIT_ASCII  = 0
  TT_ISO_ID_10646       = 1
  TT_ISO_ID_8859_1      = 2

  TT_MS_ID_SYMBOL_CS   =  0
  TT_MS_ID_UNICODE_CS  =  1
  TT_MS_ID_SJIS        =  2
  TT_MS_ID_PRC         =  3
  TT_MS_ID_BIG_5       =  4
  TT_MS_ID_WANSUNG     =  5
  TT_MS_ID_JOHAB       =  6
  TT_MS_ID_UCS_4       = 10

  # this value is deprecated
  TT_MS_ID_GB2312   = TT_MS_ID_PRC

  TT_ADOBE_ID_STANDARD  = 0
  TT_ADOBE_ID_EXPERT    = 1
  TT_ADOBE_ID_CUSTOM    = 2
  TT_ADOBE_ID_LATIN_1   = 3

  TT_MAC_LANGID_ENGLISH                     =   0
  TT_MAC_LANGID_FRENCH                      =   1
  TT_MAC_LANGID_GERMAN                      =   2
  TT_MAC_LANGID_ITALIAN                     =   3
  TT_MAC_LANGID_DUTCH                       =   4
  TT_MAC_LANGID_SWEDISH                     =   5
  TT_MAC_LANGID_SPANISH                     =   6
  TT_MAC_LANGID_DANISH                      =   7
  TT_MAC_LANGID_PORTUGUESE                  =   8
  TT_MAC_LANGID_NORWEGIAN                   =   9
  TT_MAC_LANGID_HEBREW                      =  10
  TT_MAC_LANGID_JAPANESE                    =  11
  TT_MAC_LANGID_ARABIC                      =  12
  TT_MAC_LANGID_FINNISH                     =  13
  TT_MAC_LANGID_GREEK                       =  14
  TT_MAC_LANGID_ICELANDIC                   =  15
  TT_MAC_LANGID_MALTESE                     =  16
  TT_MAC_LANGID_TURKISH                     =  17
  TT_MAC_LANGID_CROATIAN                    =  18
  TT_MAC_LANGID_CHINESE_TRADITIONAL         =  19
  TT_MAC_LANGID_URDU                        =  20
  TT_MAC_LANGID_HINDI                       =  21
  TT_MAC_LANGID_THAI                        =  22
  TT_MAC_LANGID_KOREAN                      =  23
  TT_MAC_LANGID_LITHUANIAN                  =  24
  TT_MAC_LANGID_POLISH                      =  25
  TT_MAC_LANGID_HUNGARIAN                   =  26
  TT_MAC_LANGID_ESTONIAN                    =  27
  TT_MAC_LANGID_LETTISH                     =  28
  TT_MAC_LANGID_SAAMISK                     =  29
  TT_MAC_LANGID_FAEROESE                    =  30
  TT_MAC_LANGID_FARSI                       =  31
  TT_MAC_LANGID_RUSSIAN                     =  32
  TT_MAC_LANGID_CHINESE_SIMPLIFIED          =  33
  TT_MAC_LANGID_FLEMISH                     =  34
  TT_MAC_LANGID_IRISH                       =  35
  TT_MAC_LANGID_ALBANIAN                    =  36
  TT_MAC_LANGID_ROMANIAN                    =  37
  TT_MAC_LANGID_CZECH                       =  38
  TT_MAC_LANGID_SLOVAK                      =  39
  TT_MAC_LANGID_SLOVENIAN                   =  40
  TT_MAC_LANGID_YIDDISH                     =  41
  TT_MAC_LANGID_SERBIAN                     =  42
  TT_MAC_LANGID_MACEDONIAN                  =  43
  TT_MAC_LANGID_BULGARIAN                   =  44
  TT_MAC_LANGID_UKRAINIAN                   =  45
  TT_MAC_LANGID_BYELORUSSIAN                =  46
  TT_MAC_LANGID_UZBEK                       =  47
  TT_MAC_LANGID_KAZAKH                      =  48
  TT_MAC_LANGID_AZERBAIJANI                 =  49
  TT_MAC_LANGID_AZERBAIJANI_CYRILLIC_SCRIPT =  49
  TT_MAC_LANGID_AZERBAIJANI_ARABIC_SCRIPT   =  50
  TT_MAC_LANGID_ARMENIAN                    =  51
  TT_MAC_LANGID_GEORGIAN                    =  52
  TT_MAC_LANGID_MOLDAVIAN                   =  53
  TT_MAC_LANGID_KIRGHIZ                     =  54
  TT_MAC_LANGID_TAJIKI                      =  55
  TT_MAC_LANGID_TURKMEN                     =  56
  TT_MAC_LANGID_MONGOLIAN                   =  57
  TT_MAC_LANGID_MONGOLIAN_MONGOLIAN_SCRIPT  =  57
  TT_MAC_LANGID_MONGOLIAN_CYRILLIC_SCRIPT   =  58
  TT_MAC_LANGID_PASHTO                      =  59
  TT_MAC_LANGID_KURDISH                     =  60
  TT_MAC_LANGID_KASHMIRI                    =  61
  TT_MAC_LANGID_SINDHI                      =  62
  TT_MAC_LANGID_TIBETAN                     =  63
  TT_MAC_LANGID_NEPALI                      =  64
  TT_MAC_LANGID_SANSKRIT                    =  65
  TT_MAC_LANGID_MARATHI                     =  66
  TT_MAC_LANGID_BENGALI                     =  67
  TT_MAC_LANGID_ASSAMESE                    =  68
  TT_MAC_LANGID_GUJARATI                    =  69
  TT_MAC_LANGID_PUNJABI                     =  70
  TT_MAC_LANGID_ORIYA                       =  71
  TT_MAC_LANGID_MALAYALAM                   =  72
  TT_MAC_LANGID_KANNADA                     =  73
  TT_MAC_LANGID_TAMIL                       =  74
  TT_MAC_LANGID_TELUGU                      =  75
  TT_MAC_LANGID_SINHALESE                   =  76
  TT_MAC_LANGID_BURMESE                     =  77
  TT_MAC_LANGID_KHMER                       =  78
  TT_MAC_LANGID_LAO                         =  79
  TT_MAC_LANGID_VIETNAMESE                  =  80
  TT_MAC_LANGID_INDONESIAN                  =  81
  TT_MAC_LANGID_TAGALOG                     =  82
  TT_MAC_LANGID_MALAY_ROMAN_SCRIPT          =  83
  TT_MAC_LANGID_MALAY_ARABIC_SCRIPT         =  84
  TT_MAC_LANGID_AMHARIC                     =  85
  TT_MAC_LANGID_TIGRINYA                    =  86
  TT_MAC_LANGID_GALLA                       =  87
  TT_MAC_LANGID_SOMALI                      =  88
  TT_MAC_LANGID_SWAHILI                     =  89
  TT_MAC_LANGID_RUANDA                      =  90
  TT_MAC_LANGID_RUNDI                       =  91
  TT_MAC_LANGID_CHEWA                       =  92
  TT_MAC_LANGID_MALAGASY                    =  93
  TT_MAC_LANGID_ESPERANTO                   =  94
  TT_MAC_LANGID_WELSH                       = 128
  TT_MAC_LANGID_BASQUE                      = 129
  TT_MAC_LANGID_CATALAN                     = 130
  TT_MAC_LANGID_LATIN                       = 131
  TT_MAC_LANGID_QUECHUA                     = 132
  TT_MAC_LANGID_GUARANI                     = 133
  TT_MAC_LANGID_AYMARA                      = 134
  TT_MAC_LANGID_TATAR                       = 135
  TT_MAC_LANGID_UIGHUR                      = 136
  TT_MAC_LANGID_DZONGKHA                    = 137
  TT_MAC_LANGID_JAVANESE                    = 138
  TT_MAC_LANGID_SUNDANESE                   = 139

  # The following codes are new as of 2000-03-10
  TT_MAC_LANGID_GALICIAN                    = 140
  TT_MAC_LANGID_AFRIKAANS                   = 141
  TT_MAC_LANGID_BRETON                      = 142
  TT_MAC_LANGID_INUKTITUT                   = 143
  TT_MAC_LANGID_SCOTTISH_GAELIC             = 144
  TT_MAC_LANGID_MANX_GAELIC                 = 145
  TT_MAC_LANGID_IRISH_GAELIC                = 146
  TT_MAC_LANGID_TONGAN                      = 147
  TT_MAC_LANGID_GREEK_POLYTONIC             = 148
  TT_MAC_LANGID_GREELANDIC                  = 149
  TT_MAC_LANGID_AZERBAIJANI_ROMAN_SCRIPT    = 150

  TT_MS_LANGID_ARABIC_SAUDI_ARABIA               = 0x0401
  TT_MS_LANGID_ARABIC_IRAQ                       = 0x0801
  TT_MS_LANGID_ARABIC_EGYPT                      = 0x0C01
  TT_MS_LANGID_ARABIC_LIBYA                      = 0x1001
  TT_MS_LANGID_ARABIC_ALGERIA                    = 0x1401
  TT_MS_LANGID_ARABIC_MOROCCO                    = 0x1801
  TT_MS_LANGID_ARABIC_TUNISIA                    = 0x1C01
  TT_MS_LANGID_ARABIC_OMAN                       = 0x2001
  TT_MS_LANGID_ARABIC_YEMEN                      = 0x2401
  TT_MS_LANGID_ARABIC_SYRIA                      = 0x2801
  TT_MS_LANGID_ARABIC_JORDAN                     = 0x2C01
  TT_MS_LANGID_ARABIC_LEBANON                    = 0x3001
  TT_MS_LANGID_ARABIC_KUWAIT                     = 0x3401
  TT_MS_LANGID_ARABIC_UAE                        = 0x3801
  TT_MS_LANGID_ARABIC_BAHRAIN                    = 0x3C01
  TT_MS_LANGID_ARABIC_QATAR                      = 0x4001
  TT_MS_LANGID_BULGARIAN_BULGARIA                = 0x0402
  TT_MS_LANGID_CATALAN_CATALAN                   = 0x0403
  TT_MS_LANGID_CHINESE_TAIWAN                    = 0x0404
  TT_MS_LANGID_CHINESE_PRC                       = 0x0804
  TT_MS_LANGID_CHINESE_HONG_KONG                 = 0x0C04
  TT_MS_LANGID_CHINESE_SINGAPORE                 = 0x1004
  TT_MS_LANGID_CHINESE_MACAO                     = 0x1404
  TT_MS_LANGID_CZECH_CZECH_REPUBLIC              = 0x0405
  TT_MS_LANGID_DANISH_DENMARK                    = 0x0406
  TT_MS_LANGID_GERMAN_GERMANY                    = 0x0407
  TT_MS_LANGID_GERMAN_SWITZERLAND                = 0x0807
  TT_MS_LANGID_GERMAN_AUSTRIA                    = 0x0C07
  TT_MS_LANGID_GERMAN_LUXEMBOURG                 = 0x1007
  TT_MS_LANGID_GERMAN_LIECHTENSTEIN              = 0x1407
  TT_MS_LANGID_GREEK_GREECE                      = 0x0408
  TT_MS_LANGID_ENGLISH_UNITED_STATES             = 0x0409
  TT_MS_LANGID_ENGLISH_UNITED_KINGDOM            = 0x0809
  TT_MS_LANGID_ENGLISH_AUSTRALIA                 = 0x0C09
  TT_MS_LANGID_ENGLISH_CANADA                    = 0x1009
  TT_MS_LANGID_ENGLISH_NEW_ZEALAND               = 0x1409
  TT_MS_LANGID_ENGLISH_IRELAND                   = 0x1809
  TT_MS_LANGID_ENGLISH_SOUTH_AFRICA              = 0x1C09
  TT_MS_LANGID_ENGLISH_JAMAICA                   = 0x2009
  TT_MS_LANGID_ENGLISH_CARIBBEAN                 = 0x2409
  TT_MS_LANGID_ENGLISH_BELIZE                    = 0x2809
  TT_MS_LANGID_ENGLISH_TRINIDAD                  = 0x2C09
  TT_MS_LANGID_ENGLISH_ZIMBABWE                  = 0x3009
  TT_MS_LANGID_ENGLISH_PHILIPPINES               = 0x3409
  TT_MS_LANGID_ENGLISH_INDIA                     = 0x4009
  TT_MS_LANGID_ENGLISH_MALAYSIA                  = 0x4409
  TT_MS_LANGID_ENGLISH_SINGAPORE                 = 0x4809
  TT_MS_LANGID_SPANISH_SPAIN_TRADITIONAL_SORT    = 0x040A
  TT_MS_LANGID_SPANISH_MEXICO                    = 0x080A
  TT_MS_LANGID_SPANISH_SPAIN_MODERN_SORT         = 0x0C0A
  TT_MS_LANGID_SPANISH_GUATEMALA                 = 0x100A
  TT_MS_LANGID_SPANISH_COSTA_RICA                = 0x140A
  TT_MS_LANGID_SPANISH_PANAMA                    = 0x180A
  TT_MS_LANGID_SPANISH_DOMINICAN_REPUBLIC        = 0x1C0A
  TT_MS_LANGID_SPANISH_VENEZUELA                 = 0x200A
  TT_MS_LANGID_SPANISH_COLOMBIA                  = 0x240A
  TT_MS_LANGID_SPANISH_PERU                      = 0x280A
  TT_MS_LANGID_SPANISH_ARGENTINA                 = 0x2C0A
  TT_MS_LANGID_SPANISH_ECUADOR                   = 0x300A
  TT_MS_LANGID_SPANISH_CHILE                     = 0x340A
  TT_MS_LANGID_SPANISH_URUGUAY                   = 0x380A
  TT_MS_LANGID_SPANISH_PARAGUAY                  = 0x3C0A
  TT_MS_LANGID_SPANISH_BOLIVIA                   = 0x400A
  TT_MS_LANGID_SPANISH_EL_SALVADOR               = 0x440A
  TT_MS_LANGID_SPANISH_HONDURAS                  = 0x480A
  TT_MS_LANGID_SPANISH_NICARAGUA                 = 0x4C0A
  TT_MS_LANGID_SPANISH_PUERTO_RICO               = 0x500A
  TT_MS_LANGID_SPANISH_UNITED_STATES             = 0x540A
  TT_MS_LANGID_FINNISH_FINLAND                   = 0x040B
  TT_MS_LANGID_FRENCH_FRANCE                     = 0x040C
  TT_MS_LANGID_FRENCH_BELGIUM                    = 0x080C
  TT_MS_LANGID_FRENCH_CANADA                     = 0x0C0C
  TT_MS_LANGID_FRENCH_SWITZERLAND                = 0x100C
  TT_MS_LANGID_FRENCH_LUXEMBOURG                 = 0x140C
  TT_MS_LANGID_FRENCH_MONACO                     = 0x180C
  TT_MS_LANGID_HEBREW_ISRAEL                     = 0x040D
  TT_MS_LANGID_HUNGARIAN_HUNGARY                 = 0x040E
  TT_MS_LANGID_ICELANDIC_ICELAND                 = 0x040F
  TT_MS_LANGID_ITALIAN_ITALY                     = 0x0410
  TT_MS_LANGID_ITALIAN_SWITZERLAND               = 0x0810
  TT_MS_LANGID_JAPANESE_JAPAN                    = 0x0411
  TT_MS_LANGID_KOREAN_KOREA                      = 0x0412
  TT_MS_LANGID_DUTCH_NETHERLANDS                 = 0x0413
  TT_MS_LANGID_DUTCH_BELGIUM                     = 0x0813
  TT_MS_LANGID_NORWEGIAN_NORWAY_BOKMAL           = 0x0414
  TT_MS_LANGID_NORWEGIAN_NORWAY_NYNORSK          = 0x0814
  TT_MS_LANGID_POLISH_POLAND                     = 0x0415
  TT_MS_LANGID_PORTUGUESE_BRAZIL                 = 0x0416
  TT_MS_LANGID_PORTUGUESE_PORTUGAL               = 0x0816
  TT_MS_LANGID_ROMANSH_SWITZERLAND               = 0x0417
  TT_MS_LANGID_ROMANIAN_ROMANIA                  = 0x0418
  TT_MS_LANGID_RUSSIAN_RUSSIA                    = 0x0419
  TT_MS_LANGID_CROATIAN_CROATIA                  = 0x041A
  TT_MS_LANGID_SERBIAN_SERBIA_LATIN              = 0x081A
  TT_MS_LANGID_SERBIAN_SERBIA_CYRILLIC           = 0x0C1A
  TT_MS_LANGID_CROATIAN_BOSNIA_HERZEGOVINA       = 0x101A
  TT_MS_LANGID_BOSNIAN_BOSNIA_HERZEGOVINA        = 0x141A
  TT_MS_LANGID_SERBIAN_BOSNIA_HERZ_LATIN         = 0x181A
  TT_MS_LANGID_SERBIAN_BOSNIA_HERZ_CYRILLIC      = 0x1C1A
  TT_MS_LANGID_BOSNIAN_BOSNIA_HERZ_CYRILLIC      = 0x201A
  TT_MS_LANGID_SLOVAK_SLOVAKIA                   = 0x041B
  TT_MS_LANGID_ALBANIAN_ALBANIA                  = 0x041C
  TT_MS_LANGID_SWEDISH_SWEDEN                    = 0x041D
  TT_MS_LANGID_SWEDISH_FINLAND                   = 0x081D
  TT_MS_LANGID_THAI_THAILAND                     = 0x041E
  TT_MS_LANGID_TURKISH_TURKEY                    = 0x041F
  TT_MS_LANGID_URDU_PAKISTAN                     = 0x0420
  TT_MS_LANGID_INDONESIAN_INDONESIA              = 0x0421
  TT_MS_LANGID_UKRAINIAN_UKRAINE                 = 0x0422
  TT_MS_LANGID_BELARUSIAN_BELARUS                = 0x0423
  TT_MS_LANGID_SLOVENIAN_SLOVENIA                = 0x0424
  TT_MS_LANGID_ESTONIAN_ESTONIA                  = 0x0425
  TT_MS_LANGID_LATVIAN_LATVIA                    = 0x0426
  TT_MS_LANGID_LITHUANIAN_LITHUANIA              = 0x0427
  TT_MS_LANGID_TAJIK_TAJIKISTAN                  = 0x0428
  TT_MS_LANGID_VIETNAMESE_VIET_NAM               = 0x042A
  TT_MS_LANGID_ARMENIAN_ARMENIA                  = 0x042B
  TT_MS_LANGID_AZERI_AZERBAIJAN_LATIN            = 0x042C
  TT_MS_LANGID_AZERI_AZERBAIJAN_CYRILLIC         = 0x082C
  TT_MS_LANGID_BASQUE_BASQUE                     = 0x042D
  TT_MS_LANGID_UPPER_SORBIAN_GERMANY             = 0x042E
  TT_MS_LANGID_LOWER_SORBIAN_GERMANY             = 0x082E
  TT_MS_LANGID_MACEDONIAN_MACEDONIA              = 0x042F
  TT_MS_LANGID_SETSWANA_SOUTH_AFRICA             = 0x0432
  TT_MS_LANGID_ISIXHOSA_SOUTH_AFRICA             = 0x0434
  TT_MS_LANGID_ISIZULU_SOUTH_AFRICA              = 0x0435
  TT_MS_LANGID_AFRIKAANS_SOUTH_AFRICA            = 0x0436
  TT_MS_LANGID_GEORGIAN_GEORGIA                  = 0x0437
  TT_MS_LANGID_FAEROESE_FAEROE_ISLANDS           = 0x0438
  TT_MS_LANGID_HINDI_INDIA                       = 0x0439
  TT_MS_LANGID_MALTESE_MALTA                     = 0x043A
  TT_MS_LANGID_SAMI_NORTHERN_NORWAY              = 0x043B
  TT_MS_LANGID_SAMI_NORTHERN_SWEDEN              = 0x083B
  TT_MS_LANGID_SAMI_NORTHERN_FINLAND             = 0x0C3B
  TT_MS_LANGID_SAMI_LULE_NORWAY                  = 0x103B
  TT_MS_LANGID_SAMI_LULE_SWEDEN                  = 0x143B
  TT_MS_LANGID_SAMI_SOUTHERN_NORWAY              = 0x183B
  TT_MS_LANGID_SAMI_SOUTHERN_SWEDEN              = 0x1C3B
  TT_MS_LANGID_SAMI_SKOLT_FINLAND                = 0x203B
  TT_MS_LANGID_SAMI_INARI_FINLAND                = 0x243B
  TT_MS_LANGID_IRISH_IRELAND                     = 0x083C
  TT_MS_LANGID_MALAY_MALAYSIA                    = 0x043E
  TT_MS_LANGID_MALAY_BRUNEI_DARUSSALAM           = 0x083E
  TT_MS_LANGID_KAZAKH_KAZAKHSTAN                 = 0x043F
  TT_MS_LANGID_KYRGYZ_KYRGYZSTAN                 = 0x0440
  TT_MS_LANGID_KISWAHILI_KENYA                   = 0x0441
  TT_MS_LANGID_TURKMEN_TURKMENISTAN              = 0x0442
  TT_MS_LANGID_UZBEK_UZBEKISTAN_LATIN            = 0x0443
  TT_MS_LANGID_UZBEK_UZBEKISTAN_CYRILLIC         = 0x0843
  TT_MS_LANGID_TATAR_RUSSIA                      = 0x0444
  TT_MS_LANGID_BENGALI_INDIA                     = 0x0445
  TT_MS_LANGID_BENGALI_BANGLADESH                = 0x0845
  TT_MS_LANGID_PUNJABI_INDIA                     = 0x0446
  TT_MS_LANGID_GUJARATI_INDIA                    = 0x0447
  TT_MS_LANGID_ODIA_INDIA                        = 0x0448
  TT_MS_LANGID_TAMIL_INDIA                       = 0x0449
  TT_MS_LANGID_TELUGU_INDIA                      = 0x044A
  TT_MS_LANGID_KANNADA_INDIA                     = 0x044B
  TT_MS_LANGID_MALAYALAM_INDIA                   = 0x044C
  TT_MS_LANGID_ASSAMESE_INDIA                    = 0x044D
  TT_MS_LANGID_MARATHI_INDIA                     = 0x044E
  TT_MS_LANGID_SANSKRIT_INDIA                    = 0x044F
  TT_MS_LANGID_MONGOLIAN_MONGOLIA                = 0x0450
  TT_MS_LANGID_MONGOLIAN_PRC                     = 0x0850
  TT_MS_LANGID_TIBETAN_PRC                       = 0x0451
  TT_MS_LANGID_WELSH_UNITED_KINGDOM              = 0x0452
  TT_MS_LANGID_KHMER_CAMBODIA                    = 0x0453
  TT_MS_LANGID_LAO_LAOS                          = 0x0454
  TT_MS_LANGID_GALICIAN_GALICIAN                 = 0x0456
  TT_MS_LANGID_KONKANI_INDIA                     = 0x0457
  TT_MS_LANGID_SYRIAC_SYRIA                      = 0x045A
  TT_MS_LANGID_SINHALA_SRI_LANKA                 = 0x045B
  TT_MS_LANGID_INUKTITUT_CANADA                  = 0x045D
  TT_MS_LANGID_INUKTITUT_CANADA_LATIN            = 0x085D
  TT_MS_LANGID_AMHARIC_ETHIOPIA                  = 0x045E
  TT_MS_LANGID_TAMAZIGHT_ALGERIA                 = 0x085F
  TT_MS_LANGID_NEPALI_NEPAL                      = 0x0461
  TT_MS_LANGID_FRISIAN_NETHERLANDS               = 0x0462
  TT_MS_LANGID_PASHTO_AFGHANISTAN                = 0x0463
  TT_MS_LANGID_FILIPINO_PHILIPPINES              = 0x0464
  TT_MS_LANGID_DHIVEHI_MALDIVES                  = 0x0465
  TT_MS_LANGID_HAUSA_NIGERIA                     = 0x0468
  TT_MS_LANGID_YORUBA_NIGERIA                    = 0x046A
  TT_MS_LANGID_QUECHUA_BOLIVIA                   = 0x046B
  TT_MS_LANGID_QUECHUA_ECUADOR                   = 0x086B
  TT_MS_LANGID_QUECHUA_PERU                      = 0x0C6B
  TT_MS_LANGID_SESOTHO_SA_LEBOA_SOUTH_AFRICA     = 0x046C
  TT_MS_LANGID_BASHKIR_RUSSIA                    = 0x046D
  TT_MS_LANGID_LUXEMBOURGISH_LUXEMBOURG          = 0x046E
  TT_MS_LANGID_GREENLANDIC_GREENLAND             = 0x046F
  TT_MS_LANGID_IGBO_NIGERIA                      = 0x0470
  TT_MS_LANGID_YI_PRC                            = 0x0478
  TT_MS_LANGID_MAPUDUNGUN_CHILE                  = 0x047A
  TT_MS_LANGID_MOHAWK_MOHAWK                     = 0x047C
  TT_MS_LANGID_BRETON_FRANCE                     = 0x047E
  TT_MS_LANGID_UIGHUR_PRC                        = 0x0480
  TT_MS_LANGID_MAORI_NEW_ZEALAND                 = 0x0481
  TT_MS_LANGID_OCCITAN_FRANCE                    = 0x0482
  TT_MS_LANGID_CORSICAN_FRANCE                   = 0x0483
  TT_MS_LANGID_ALSATIAN_FRANCE                   = 0x0484
  TT_MS_LANGID_YAKUT_RUSSIA                      = 0x0485
  TT_MS_LANGID_KICHE_GUATEMALA                   = 0x0486
  TT_MS_LANGID_KINYARWANDA_RWANDA                = 0x0487
  TT_MS_LANGID_WOLOF_SENEGAL                     = 0x0488
  TT_MS_LANGID_DARI_AFGHANISTAN                  = 0x048C

  TT_NAME_ID_COPYRIGHT              = 0
  TT_NAME_ID_FONT_FAMILY            = 1
  TT_NAME_ID_FONT_SUBFAMILY         = 2
  TT_NAME_ID_UNIQUE_ID              = 3
  TT_NAME_ID_FULL_NAME              = 4
  TT_NAME_ID_VERSION_STRING         = 5
  TT_NAME_ID_PS_NAME                = 6
  TT_NAME_ID_TRADEMARK              = 7

  # the following values are from the OpenType spec
  TT_NAME_ID_MANUFACTURER           = 8
  TT_NAME_ID_DESIGNER               = 9
  TT_NAME_ID_DESCRIPTION            = 10
  TT_NAME_ID_VENDOR_URL             = 11
  TT_NAME_ID_DESIGNER_URL           = 12
  TT_NAME_ID_LICENSE                = 13
  TT_NAME_ID_LICENSE_URL            = 14
  # number 15 is reserved
  TT_NAME_ID_TYPOGRAPHIC_FAMILY     = 16
  TT_NAME_ID_TYPOGRAPHIC_SUBFAMILY  = 17
  TT_NAME_ID_MAC_FULL_NAME          = 18

  # The following code is new as of 2000-01-21
  TT_NAME_ID_SAMPLE_TEXT            = 19

  # This is new in OpenType 1.3
  TT_NAME_ID_CID_FINDFONT_NAME      = 20

  # This is new in OpenType 1.5
  TT_NAME_ID_WWS_FAMILY             = 21
  TT_NAME_ID_WWS_SUBFAMILY          = 22

  # This is new in OpenType 1.7
  TT_NAME_ID_LIGHT_BACKGROUND       = 23
  TT_NAME_ID_DARK_BACKGROUND        = 24

  # This is new in OpenType 1.8
  TT_NAME_ID_VARIATIONS_PREFIX      = 25

  # these two values are deprecated
  TT_NAME_ID_PREFERRED_FAMILY     = TT_NAME_ID_TYPOGRAPHIC_FAMILY
  TT_NAME_ID_PREFERRED_SUBFAMILY  = TT_NAME_ID_TYPOGRAPHIC_SUBFAMILY

  FT_FSTYPE_XXX = {
    "FT_FSTYPE_INSTALLABLE_EMBEDDING"         => 0x0000,
    "FT_FSTYPE_RESTRICTED_LICENSE_EMBEDDING"  => 0x0002,
    "FT_FSTYPE_PREVIEW_AND_PRINT_EMBEDDING"   => 0x0004,
    "FT_FSTYPE_EDITABLE_EMBEDDING"            => 0x0008,
    "FT_FSTYPE_NO_SUBSETTING"                 => 0x0100,
    "FT_FSTYPE_BITMAP_EMBEDDING_ONLY"         => 0x0200
  }

  struct FT_Vector
    x : LibC::Long
    y : LibC::Long
  end

  struct FT_BBox
    xMin : LibC::Long
    yMin : LibC::Long
    xMax : LibC::Long
    yMax : LibC::Long
  end

  struct FT_Matrix
    xx : LibC::Long
    xy : LibC::Long
    yx : LibC::Long
    yy : LibC::Long
  end

  struct FT_UnitVector
    x : LibC::Short
    y : LibC::Short
  end

  struct FT_Data
    pointer : LibC::Char*
    length : LibC::Int
  end

  struct FT_Generic
    data : Void*
    finalizer : FT_Generic_Finalizer
  end

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

  struct FT_FaceRec
    num_faces : LibC::Long
    face_index : LibC::Long

    face_flags : LibC::Long
    style_flags : LibC::Long

    num_glyphs : LibC::Long

    family_name : LibC::Char*
    style_name : LibC::Char*

    num_fixed_sizes : LibC::Int
    available_sizes : FT_Bitmap_Size*

    num_charmaps : LibC::Int
    charmaps : FT_CharMap*

    generic : FT_Generic

    bbox : FT_BBox

    units_per_EM : LibC::UShort
    ascender : LibC::Short
    descender : LibC::Short
    height : LibC::Short

    max_advance_width : LibC::Short
    max_advance_height : LibC::Short

    glyph : FT_GlyphSlot
    size : FT_Size
    charmap : FT_CharMap

    driver : FT_Driver
    memory : FT_Memory
    stream : FT_Stream

    sizes_list : FT_ListRec

    autohint : FT_Generic
    extensions : Void*

    internal : FT_Face_Internal
  end

  struct FT_ListRec
    head : FT_ListNode
    tail : FT_ListNode
  end

  struct FT_ListNodeRec
    prev : FT_ListNode
    next : FT_ListNode
    data : Void*
  end

  struct FT_SizeRec
    face : FT_Face
    generic : FT_Generic
    metrics : FT_Size_Metrics
    internal : FT_Size_Internal
  end

  struct FT_Size_Metrics
    x_ppem : LibC::UShort
    y_ppem : LibC::UShort

    x_scale : LibC::Long
    y_scale : LibC::Long

    ascender : LibC::Long
    descender : LibC::Long
    height : LibC::Long
    max_advance : LibC::Long
  end

  struct FT_GlyphSlotRec
    library : FT_Library
    face : FT_Face
    next : FT_GlyphSlot
    glyph_index : LibC::UInt

    metrics : FT_Glyph_Metrics
    linearHoriAdvance : LibC::Long
    linearVertAdvance : LibC::Long
    advance : FT_Vector

    format : FT_Glyph_Format

    bitmap : FT_Bitmap
    bitmap_left : LibC::Int
    bitmap_top : LibC::Int

    outline : FT_Outline

    num_subglyphs : LibC::UInt
    subglyphs : FT_SubGlyph

    control_data : Void*
    control_len : LibC::Long

    lsb_data : LibC::Long
    rsb_data : LibC::Long

    other : Void*

    internal : FT_Slot_Internal
  end

  struct FT_Outline
    n_contours : LibC::Short
    n_points : LibC::Short

    points : FT_Vector*
    tags : LibC::Char*
    contours : LibC::Short*

    flags : LibC::Int
  end

  struct FT_Glyph_Metrics
    width : LibC::Long
    height : LibC::Long

    horiBearingX : LibC::Long
    horiBearingY : LibC::Long
    horiAdvance : LibC::Long

    vertBearingX : LibC::Long
    vertBearingY : LibC::Long
    vertAdvance : LibC::Long
  end

  struct FT_Bitmap_Size
    height : LibC::Short
    width : LibC::Short

    size : LibC::Long

    x_ppem : LibC::Long
    y_ppem : LibC::Long
  end

  struct FT_Parameter
    tag : LibC::ULong
    data : Void*
  end

  struct FT_Open_Args
    flags : LibC::UInt
    memory_base : LibC::Char*
    memory_size : LibC::Long
    pathname : LibC::Char**
    stream : FT_Stream
    driver : FT_Module
    num_params : LibC::Int
    params : FT_Parameter*
  end

  struct FT_Size_RequestRec
    type : FT_Size_Request_Type
    width : LibC::Long
    height : LibC::Long
    horiResolution : LibC::UInt
    vertResolution : LibC::UInt
  end

  struct FT_CharMapRec
    face : FT_Face
    encoding : FT_Encoding
    platform_id : LibC::UShort
    encoding_id : LibC::UShort
  end

  struct FT_Color
    blue : LibC::Char
    green : LibC::Char
    red : LibC::Char
    alpha : LibC::Char
  end

  struct FT_Palette_Data
    num_palettes : LibC::UShort
    palette_name_ids : LibC::UShort*
    palette_flags : LibC::UShort

    num_palette_entries : LibC::UShort
    palette_entry_name_ids : LibC::UShort
  end

  struct FT_LayerIterator
    num_layers : LibC::UInt
    layer : LibC::UInt
    p : LibC::Char*
  end

  struct FT_GlyphRec
    library : FT_Library
    # clazz : FT_Glyph_Class* # Private
    format : FT_Glyph_Format
    advance : FT_Vector
  end

  struct FT_BitmapGlyphRec
    root : FT_GlyphRec
    left : LibC::Int
    top : LibC::Int
    bitmap : FT_Bitmap
  end

  struct FT_OutlineGlyphRec
    root : FT_GlyphRec
    outline : FT_Outline
  end

  struct FT_StreamRec
    base : LibC::Char*
    size : LibC::Long
    pos : LibC::Long

    descriptor : FT_StreamDesc
    pathname : FT_StreamDesc
    read : FT_Stream_IoFunc
    close : FT_Stream_CloseFunc

    memory : FT_Memory
    cursor : LibC::Char*
    limit : LibC::Char*
  end

  struct FT_StreamDesc
    value : LibC::Long
    pointer : Void*
  end

  struct FT_MemoryRec
    user : Void*
    alloc : FT_Alloc_Func
    free : FT_Free_Func
    realloc : FT_Realloc_Func
  end

  struct FT_SfntName
    platform_id : LibC::UShort
    encoding_id : LibC::UShort
    language_id : LibC::UShort
    name_id     : LibC::UShort

    string : LibC::Char* # this string is *not* null-terminated!
    string_len : LibC::UInt
  end

  struct FT_SfntLangTag
    string : LibC::Char* # this string is *not* null-terminated!
    string_len : LibC::UInt
  end

  struct FT_Outline_Funcs
    move_to : FT_Outline_MoveToFunc
    line_to : FT_Outline_LineToFunc
    conic_to : FT_Outline_ConicToFunc
    cubic_to : FT_Outline_CubicToFunc

    shift : LibC::Int
    delta : LibC::Long
  end

  enum FT_Pixel_Mode
    NONE = FT_PIXEL_MODE_NONE
    MONO = FT_PIXEL_MODE_MONO
    GRAY = FT_PIXEL_MODE_GRAY
    GRAY2 = FT_PIXEL_MODE_GRAY2
    GRAY4 = FT_PIXEL_MODE_GRAY4
    LCD = FT_PIXEL_MODE_LCD
    LCD_V = FT_PIXEL_MODE_LCD_V
    BGRA = FT_PIXEL_MODE_BGRA
    MAX = FT_PIXEL_MODE_MAX
  end

  enum FT_Glyph_Format
    NONE = FT_GLYPH_FORMAT_NONE
    COMPOSITE = FT_GLYPH_FORMAT_COMPOSITE
    BITMAP = FT_GLYPH_FORMAT_BITMAP
    OUTLINE = FT_GLYPH_FORMAT_OUTLINE
    PLOTTER = FT_GLYPH_FORMAT_PLOTTER
  end

  enum FT_Encoding
    NONE = FT_ENCODING_NONE

    MS_SYMBOL = FT_ENCODING_MS_SYMBOL
    UNICODE = FT_ENCODING_UNICODE

    SJIS = FT_ENCODING_SJIS
    PRC = FT_ENCODING_PRC
    BIG5 = FT_ENCODING_BIG5
    WANSUNG = FT_ENCODING_WANSUNG
    JOHAB = FT_ENCODING_JOHAB

    GB2312 = FT_ENCODING_GB2312
    MS_SJIS = FT_ENCODING_MS_SJIS
    MS_GB2312 = FT_ENCODING_MS_GB2312
    MS_BIG5 = FT_ENCODING_MS_BIG5
    MS_WANSUNG = FT_ENCODING_MS_WANSUNG
    MS_JOHAB = FT_ENCODING_MS_JOHAB

    ADOBE_STANDARD = FT_ENCODING_ADOBE_STANDARD
    ADOBE_EXPERT = FT_ENCODING_ADOBE_EXPERT
    ADOBE_CUSTOM = FT_ENCODING_ADOBE_CUSTOM
    ADOBE_LATIN_1 = FT_ENCODING_ADOBE_LATIN_1

    OLD_LATIN_2 = FT_ENCODING_OLD_LATIN_2
    APPLE_ROMAN = FT_ENCODING_APPLE_ROMAN
  end

  enum FT_Size_Request_Type
    NOMINAL = FT_SIZE_REQUEST_TYPE_NOMINAL
    REAL_DIM = FT_SIZE_REQUEST_TYPE_REAL_DIM
    BBOX = FT_SIZE_REQUEST_TYPE_BBOX
    CELL = FT_SIZE_REQUEST_TYPE_CELL
    SCALES = FT_SIZE_REQUEST_TYPE_SCALES
    MAX = FT_SIZE_REQUEST_TYPE_MAX
  end

  enum FT_Render_Mode
    NORMAL = FT_RENDER_MODE_NORMAL
    LIGHT = FT_RENDER_MODE_LIGHT
    MONO = FT_RENDER_MODE_MONO
    LCD = FT_RENDER_MODE_LCD
    LCD_V = FT_RENDER_MODE_LCD_V
    MAX = FT_RENDER_MODE_MAX
  end

  enum FT_Kerning_Mode
    DEFAULT = FT_KERNING_DEFAULT
    UNFITTED = FT_KERNING_UNFITTED
    UNSCALED = FT_KERNING_UNSCALED
  end

  enum FT_Glyph_BBox_Mode
    UNSCALED  = FT_GLYPH_BBOX_UNSCALED
    SUBPIXELS = FT_GLYPH_BBOX_SUBPIXELS
    GRIDFIT   = FT_GLYPH_BBOX_GRIDFIT
    TRUNCATE  = FT_GLYPH_BBOX_TRUNCATE
    PIXELS    = FT_GLYPH_BBOX_PIXELS
  end

  enum FT_StrokerBorder
    LEFT = FT_STROKER_BORDER_LEFT
    RIGHT = FT_STROKER_BORDER_RIGHT
  end

  enum FT_Stroker_LineCap
    BUTT = FT_STROKER_LINECAP_BUTT
    ROUND = FT_STROKER_LINECAP_ROUND
    SQUARE = FT_STROKER_LINECAP_SQUARE
  end

  enum FT_Stroker_LineJoin
    ROUND          = FT_STROKER_LINEJOIN_ROUND
    BEVEL          = FT_STROKER_LINEJOIN_BEVEL
    MITER_VARIABLE = FT_STROKER_LINEJOIN_MITER_VARIABLE
    MITER          = FT_STROKER_LINEJOIN_MITER
    MITER_FIXED    = FT_STROKER_LINEJOIN_MITER_FIXED
  end

  fun FT_Library_Version(library : FT_Library, amajor : LibC::Int*, aminot : LibC::Int*, apatch : LibC::Int*) : Void
  fun FT_Face_CheckTrueTypePatents(face : FT_Face) : LibC::Char
  fun FT_Face_SetUnpatentedHinting(face : FT_Face, value : LibC::Char) : LibC::Char

  fun FT_Init_FreeType(alibrary : FT_Library*) : LibC::Int
  fun FT_Done_FreeType(library : FT_Library) : LibC::Int
  fun FT_New_Face(library : FT_Library, filepathname : LibC::Char*, face_index : LibC::Long, aface : FT_Face*) : LibC::Int
  fun FT_New_Memory_Face(library : FT_Library, filebase : LibC::Char*, filesize : LibC::Long, face_index : LibC::Long, aface : FT_Face*) : LibC::Int
  fun FT_Done_Face(face : FT_Face) : LibC::Int
  fun FT_Reference_Face(face : FT_Face) : LibC::Int
  fun FT_Face_Properties(face : FT_Face, num_properties : LibC::UInt, properties : FT_Parameter*) : LibC::Int
  fun FT_Open_Face(library : FT_Library, args : FT_Open_Args*, face_index : LibC::Long, aface : FT_Face*) : LibC::Int
  fun FT_Attach_File(face : FT_Face, filepathname : LibC::Char*) : LibC::Int
  fun FT_Attach_Stream(face : FT_Face, parameters : FT_Open_Args*) : LibC::Int
  fun FT_Set_Char_Size(face : FT_Face, char_width : LibC::Long, char_height : LibC::Long, horz_resolution : LibC::UInt, vert_resolution : LibC::UInt) : LibC::Int
  fun FT_Set_Pixel_Sizes(face : FT_Face, pixel_width : LibC::UInt, pixel_height : LibC::UInt) : LibC::Int
  fun FT_Request_Size(face : FT_Face, req : FT_Size_Request) : LibC::Int
  fun FT_Select_Size(face : FT_Face, strike_index : LibC::Int) : LibC::Int
  fun FT_Set_Transform(face : FT_Face, matrix : FT_Matrix, delta : FT_Vector) : LibC::Int
  fun FT_Load_Glyph(face : FT_Face, glyph_index : LibC::UInt, load_flags : LibC::Int32T) : LibC::Int
  fun FT_Get_Char_Index(face : FT_Face, charcode : LibC::ULong) : LibC::Int
  fun FT_Get_First_Char(face : FT_Face, agindex : LibC::UInt*) : LibC::Int
  fun FT_Get_Next_Char(face : FT_Face, char_code : LibC::ULong, agindex : LibC::UInt*) : LibC::Int
  fun FT_Get_Name_Index(face : FT_Face, glyph_name : LibC::Char*) : LibC::Int
  fun FT_Load_Char(face : FT_Face, char_code : LibC::ULong, load_flags : LibC::Int32T) : LibC::Int
  fun FT_Render_Glyph(slot : FT_GlyphSlot, render_mode : FT_Render_Mode) : LibC::Int
  fun FT_Get_Kerning(face : FT_Face, left_glyph : LibC::UInt, right_glyph : LibC::UInt, kern_mode : LibC::UInt, akerning : FT_Vector*) : LibC::Int
  fun FT_Get_Track_Kerning(face : FT_Face, point_size : LibC::Long, degree : LibC::Int, akerning : FT_Vector*) : LibC::Int
  fun FT_Get_Glyph_Name(face : FT_Face, glyph_index : LibC::UInt, buffer : Void*, buffer_max : LibC::UInt) : LibC::Int
  fun FT_Get_Postscript_Name(face : FT_Face) : LibC::Char*
  fun FT_Select_Charmap(face : FT_Face, encoding : FT_Encoding) : LibC::Int
  fun FT_Set_Charmap(face : FT_Face, charmap : FT_CharMap) : LibC::Int
  fun FT_Get_Charmap_Index(charmap : FT_CharMap) : LibC::Int
  fun FT_Get_FSType_Flags(face : FT_Face) : LibC::UShort
  fun FT_Get_SubGlyph_Info(glyph : FT_GlyphSlot, sub_index : LibC::UInt, p_index : LibC::Int*, p_flags : LibC::UInt*, p_arg1 : LibC::Int*, p_arg2 : LibC::Int*, p_transform : FT_Matrix*) : LibC::Int

  fun FT_Get_CMap_Language_ID(charmap : FT_CharMap) : LibC::ULong
  fun FT_Get_CMap_Format(charmap : FT_CharMap) : LibC::ULong

  fun FT_Face_GetCharVariantIndex(face : FT_Face, charcode : LibC::ULong, variantSelector : LibC::ULong) : LibC::UInt
  fun FT_Face_GetCharVariantIsDefault(face : FT_Face, charcode : LibC::ULong, variantSelector : LibC::ULong) : LibC::UInt
  fun FT_Face_GetVariantSelectors(face : FT_Face) : LibC::UInt32T*
  fun FT_Face_GetVariantsOfChar(face : FT_Face, charcode : LibC::ULong) : LibC::UInt32T*
  fun FT_Face_GetCharsOfVariant(face : FT_Face, variantSelector : LibC::ULong) : LibC::UInt32T*

  fun FT_Palette_Data_Get(face : FT_Face, apalette : FT_Palette_Data*) : LibC::Int
  fun FT_Palette_Select(face : FT_Face, palette_index : LibC::UShort, apalette : FT_Color**)
  fun FT_Palette_Set_Foreground_Color(face : FT_Face, foreground_color : FT_Color) : LibC::Int

  fun FT_Get_Color_Glyph_Layer(face : FT_Face, base_glyph : LibC::UInt, aglyph_index : LibC::UInt*, acolor_index : LibC::UInt*, iterator : FT_LayerIterator*) : LibC::Char

  fun FT_New_Glyph(library : FT_Library, format : FT_Glyph_Format, aglyph : FT_Glyph*) : LibC::Int
  fun FT_Get_Glyph(slot : FT_GlyphSlot, aglyph : FT_Glyph*) : LibC::Int
  fun FT_Glyph_Copy(source : FT_Glyph, target : FT_Glyph*) : LibC::Int
  fun FT_Glyph_Transform(glyph : FT_Glyph, matrix : FT_Matrix*, delta : FT_Vector*) : LibC::Int
  fun FT_Glyph_Transform(glyph : FT_Glyph, matrix : FT_Matrix*, delta : FT_Vector*) : LibC::Int
  fun FT_Glyph_Get_CBox(glyph : FT_Glyph) : Void
  fun FT_Glyph_Stroke(pglyph : FT_Glyph*, stroker : FT_Stroker, destroy : LibC::Char) : LibC::Int
  fun FT_Glyph_StrokeBorder(pglyph : FT_Glyph*, stroker : FT_Stroker, inside : LibC::Char, destroy : LibC::Char) : LibC::Int
  fun FT_Glyph_To_Bitmap(the_glyph : FT_Glyph*, render_mode : FT_Render_Mode, origin : FT_Vector*, destroy : LibC::Char) : LibC::Int
  fun FT_Done_Glyph(the_glyph : FT_Glyph) : Void

  fun FT_New_Size(face : FT_Face, size : FT_Size*) : LibC::Int
  fun FT_Done_Size(size : FT_Size) : LibC::Int
  fun FT_Activate_Size(size : FT_Size) : LibC::Int

  fun FT_Get_Font_Format(face : FT_Face) : LibC::Char*



  fun FT_Get_Sfnt_Name_Count(face : FT_Face) : LibC::UInt
  fun FT_Get_Sfnt_Name(face : FT_Face, idx : LibC::UInt, aname : FT_SfntName*) : LibC::Int
  fun FT_Get_Sfnt_LangTag(face : FT_Face, langID : LibC::UInt, alangTag : FT_SfntLangTag*) : LibC::Int

  fun FT_Stroker_New(library : FT_Library, astroker : FT_Stroker*) : LibC::Int
  fun FT_Stroker_Set(stroker : FT_Stroker, radius : LibC::Long, line_cap : FT_Stroker_LineCap, line_join : FT_Stroker_LineJoin, miter_limit : LibC::Long) : LibC::Int
  fun FT_Stroker_Rewind(stroker : FT_Stroker) : LibC::Int
  fun FT_Stroker_ParseOutline(stroker : FT_Stroker, outline : FT_Outline*, opened : LibC::Char) : LibC::Int
  fun FT_Stroker_Done(stroker : FT_Stroker) : Void
  fun FT_Stroker_BeginSubPath(stroker : FT_Stroker, to : FT_Vector*, open : LibC::Char) : LibC::Int
  fun FT_Stroker_EndSubPath(stroker : FT_Stroker) : LibC::Int
  fun FT_Stroker_LineTo(stroker : FT_Stroker, to : FT_Vector) : LibC::Int
  fun FT_Stroker_ConicTo(stroker : FT_Stroker, control : FT_Vector*, to : FT_Vector*) : LibC::Int
  fun FT_Stroker_CubicTo(stroker : FT_Stroker, control1 : FT_Vector*, control2 : FT_Vector*, to : FT_Vector*) : LibC::Int
  fun FT_Stroker_GetBorderCounts(stroker : FT_Stroker, border : FT_StrokerBorder, anum_points : LibC::UInt*, anum_contours : LibC::UInt*) : LibC::Int
  fun FT_Stroker_ExportBorder(stroker : FT_Stroker, border : FT_StrokerBorder, outline : FT_Outline*) : LibC::Int
  fun FT_Stroker_GetCounts(stroker : FT_Stroker, anum_points : LibC::UInt, anum_contours : LibC::UInt) : LibC::Int
  fun FT_Stroker_Export(stroker : FT_Stroker, outline : FT_Outline*) : Void

  fun FT_Outline_GetInsideBorder(outline : FT_Outline*) : FT_StrokerBorder
  fun FT_Outline_GetOutsideBorder(outline : FT_Outline*) : FT_StrokerBorder
  fun FT_Outline_Get_BBox(outline : FT_Outline*, abbox : FT_BBox*) : LibC::Int
  fun FT_Outline_Get_CBox(outline : FT_Outline*, abbox : FT_BBox*) : Void

  type FT_Library = Void*
  type FT_Face = FT_FaceRec*
  type FT_Size = FT_SizeRec*
  type FT_SubGlyph = Void*
  type FT_Module = Void*
  type FT_Size_Request = FT_Size_RequestRec*
  type FT_Face_Internal = Void*
  type FT_Size_Internal = Void*
  type FT_Slot_Internal = Void*
  type FT_Driver = Void*
  type FT_Memory = FT_MemoryRec
  type FT_Glyph = FT_GlyphRec*
  type FT_BitmapGlyph = FT_BitmapGlyphRec*
  type FT_OutlineGlyph = FT_OutlineGlyphRec*
  type FT_ListNode = FT_ListNodeRec*
  type FT_CharMap = FT_CharMapRec*
  type FT_GlyphSlot = FT_GlyphSlotRec*
  type FT_Stream = FT_StreamRec*
  type FT_Stroker = Void*

  type FT_Generic_Finalizer = (Void* -> Void)
  type FT_Stream_IoFunc = (FT_Stream, LibC::Long, LibC::Char*,  LibC::Long -> LibC::ULong)
  type FT_Stream_CloseFunc = (FT_Stream -> Void)

  type FT_Alloc_Func = (FT_Memory, LibC::Long -> Void*)
  type FT_Free_Func = (FT_Memory, Void* -> Void*)
  type FT_Realloc_Func = (FT_Memory, LibC::Long, LibC::Long, Void* -> Void*)

  type FT_Outline_MoveToFunc = (FT_Vector*, Void* -> LibC::Int)
  type FT_Outline_LineToFunc = (FT_Vector*, Void* -> LibC::Int)
  type FT_Outline_ConicToFunc = (FT_Vector*, FT_Vector*, Void* -> LibC::Int)
  type FT_Outline_CubicToFunc = (FT_Vector*, FT_Vector*, FT_Vector*, Void* -> LibC::Int)
end
