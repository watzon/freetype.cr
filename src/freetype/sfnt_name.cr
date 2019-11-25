module Freetype
  class SfntName
    def initialize(@name : LibFreetype::FT_SfntName)
    end

    # The platform ID for 'string'.
    def platform_id
      @name.platform_id
    end

    # The encoding ID for 'string'.
    def encoding_id
      @name.encoding_id
    end

    # The language ID for 'string'.
    def language_id
      @name.language_id
    end

    # An identifier for 'string'.
    def name_id
      @name.name_id
    end

    # The length of 'string' in bytes.
    def string_len
      @name.string_len.to_i
    end

    # The 'name' string. Note that its format differs depending on
    # the (platform,encoding) pair. It can be a Pascal String, a
    # UTF-16 one, etc.
    #
    # Generally speaking, the string is not zero-terminated. Please
    # refer to the TrueType specification for details.
    def string
      String.new(@name.string, string_len)
    end

    forward_missing_to string
  end
end
