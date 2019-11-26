module Freetype
  ERRORS = {
    # Generic errors
    0x01 => CannotOpenResource,
    0x02 => UnknownFileFormat,
    0x03 => InvalidFileFormat,
    0x04 => InvalidVersion,
    0x05 => LowerModuleVersion,
    0x06 => InvalidArgument,
    0x07 => UnimplementedFeature,
    0x08 => InvalidTable,
    0x09 => InvalidOffset,
    0x0A => ArrayTooLarge,
    0x0B => MissingModule,
    0x0C => MissingProperty,

    # Glyph/Character errors
    0x10 => InvalidGlyphIndex,
    0x11 => InvalidCharacterCode,
    0x12 => InvalidGlyphFormat,
    0x13 => CannotRenderGlyph,
    0x14 => InvalidOutline,
    0x15 => InvalidComposite,
    0x16 => TooManyHints,
    0x17 => InvalidPixelSize,

    # Handle errors
    0x20 => InvalidHandle,
    0x21 => InvalidLibraryHandle,
    0x22 => InvalidDriverHandle,
    0x23 => InvalidFaceHandle,
    0x24 => InvalidSizeHandle,
    0x25 => InvalidSlotHandle,
    0x26 => InvalidCharMapHandle,
    0x27 => InvalidCacheHandle,
    0x28 => InvalidStreamHandle,

    # Driver errors
    0x30 => TooManyDrivers,
    0x31 => TooManyExtensions,

    # Memory errors
    0x40 => OutOfMemory,
    0x41 => UnlistedObject,

    # Stream errors
    0x51 => CannotOpenStream,
    0x52 => InvalidStreamSeek,
    0x53 => InvalidStreamSkip,
    0x54 => InvalidStreamRead,
    0x55 => InvalidStreamOperation,
    0x56 => InvalidFrameOperation,
    0x57 => NestedFrameAccess,
    0x58 => InvalidFrameRead,

    # Raster errors
    0x60 => RasterUninitialized,
    0x61 => RasterCorrupted,
    0x62 => RasterOverflow,
    0x63 => RasterNegativeHeight,

    # Cache errors
    0x70 => TooManyCaches,

    # TrueType and SFNT errors
    0x80 => InvalidOpcode,
    0x81 => TooFewArguments,
    0x82 => StackOverflow,
    0x83 => CodeOverflow,
    0x84 => BadArgument,
    0x85 => DivisionByZero,
    0x86 => InvalidReference,
    0x87 => DebugOpCode,
    0x88 => ENDFInExecStream,
    0x89 => NestedDEFS,
    0x8A => InvalidCodeRange,
    0x8B => ExecutionTooLong,
    0x8C => TooManyFunctionDefs,
    0x8D => TooManyInstructionDefs,
    0x8E => TableMissing,
    0x8F => HorizHeaderMissing,
    0x90 => LocationsMissing,
    0x91 => NameTableMissing,
    0x92 => CMapTableMissing,
    0x93 => HmtxTableMissing,
    0x94 => PostTableMissing,
    0x95 => InvalidHorizMetrics,
    0x96 => InvalidCharMapFormat,
    0x97 => InvalidPPem,
    0x98 => InvalidVertMetrics,
    0x99 => CouldNotFindContext,
    0x9A => InvalidPostTableFormat,
    0x9B => InvalidPostTable,
    0x9C => DEFInGlyphBytecode,
    0x9D => MissingBitmap,

    # CFF, CDD, and Type 1 errors
    0xA0 => SyntaxError,
    0xA1 => StackUnderflow,
    0xA2 => Ignore,
    0xA3 => NoUnicodeGlyphName,
    0xA4 => GlyphTooBig,

    # BDF errors
    0xB0 => MissingStartfontField,
    0xB1 => MissingFontField,
    0xB2 => MissingSizeField,
    0xB3 => MissingFontboundingboxField,
    0xB4 => MissingCharsField,
    0xB5 => MissingStartcharField,
    0xB6 => MissingEncodingField,
    0xB7 => MissingBbxField,
    0xB8 => BbxTooBig,
    0xB9 => CorruptedFontHeader,
    0xBA => CorruptedFontGlyphs
  }

  class Error < Exception
    def self.new(code : Int32)
      {% begin %}
      case code
      {% for code, classname in ERRORS %}
      when {{code}}
        return {{classname}}.new
      {% end %}
      else
        Error.new
      end
      {% end %}
    end
  end

  {% for code, classname in ERRORS %}
  class {{ classname.id }} < Error; end
  {% end %}
end
