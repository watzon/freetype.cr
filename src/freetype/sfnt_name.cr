module Freetype
  class SfntName
    getter sfnt_name

    def initialize(@sfnt_name : LibFreetype::FT_SfntName)
    end

    # The platform ID for 'string'.
    def platform_id
      @sfnt_name.platform_id
    end

    # The encoding ID for 'string'.
    def encoding_id
      @sfnt_name.encoding_id
    end

    # The language ID for 'string'.
    def language_id
      @sfnt_name.language_id
    end

    # An identifier for 'string'.
    def name_id
      @sfnt_name.name_id
    end

    # The length of 'string' in bytes.
    def string_len
      @sfnt_name.string_len.to_i
    end

    # The 'name' string. Note that its format differs depending on
    # the (platform,encoding) pair. It can be a Pascal String, a
    # UTF-16 one, etc.
    #
    # Generally speaking, the string is not zero-terminated. Please
    # refer to the TrueType specification for details.
    def string
      String.new(@sfnt_name.string, string_len)
    end

    forward_missing_to string
  end
end
