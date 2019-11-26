#!/usr/bin/env crystal

require "option_parser"
require "../src/freetype"

def bool_to_yn(bool)
  bool ? "yes" : "no"
end

def usage
  puts "ftdump: simple font dumper -- part of the freetype project"
  puts "----------------------------------------------------------"
  puts "Usage: ftdump [options] -f fontname"
  puts ""
  puts "    -n        print SFNT name tables"
  puts "    -v        be verbose"
end

def print_name(face)
  puts "font name entries"
  puts "    family:         #{face.family_name}"
  puts "    style:          #{face.style_name}"
  ps_name = face.postscript_name || "UNAVAILABLE"
  puts "    postscript:     #{face.style_name}"
end

def print_type(face)
  puts "font type entries"

  # Snft?
  puts "    sfnt wrapped:   #{bool_to_yn(face.sfnt?)}"

  # Scalable?
  types = [] of String
  types << "scalable" if face.scalable?
  types << "multiple masters" if face.has_multiple_masters?
  types << "fixed size" if face.has_fixed_sizes?

  puts "    type:           #{types.join(", ")}"

  # Direction
  directions = [] of String
  directions << "horizontal" if face.has_horizontal?
  directions << "vertical" if face.has_vertical?

  puts "    direction:      #{directions.join(", ")}"

  # Fixed width
  puts "    fixed width:    #{bool_to_yn(face.fixed_width?)}"

  # Glyph names
  puts "    glyph names:    #{bool_to_yn(face.has_glyph_names?)}"

  # Scalable?
  if face.scalable?
    puts "    EM size:        #{face.units_per_em}"
    puts "    global bbox:    (%d, %d):(%d, %d)" % [
      face.bbox.xmin, face.bbox.ymin,
      face.bbox.xmax, face.bbox.ymax,
    ]
    puts "    ascent:         #{face.ascender}"
    puts "    descent:        #{face.descender}"
    puts "    text height:    #{face.height}"
  end
end

def get_platform_id(platform_id)
  case platform_id
  when LibFreetype::TT_PLATFORM_APPLE_UNICODE
    "Apple (Unicode)"
  when LibFreetype::TT_PLATFORM_MACINTOSH
    "Macintosh"
  when LibFreetype::TT_PLATFORM_ISO
    "ISO (Deprecated)"
  when LibFreetype::TT_PLATFORM_MICROSOFT
    "Microsoft"
  when LibFreetype::TT_PLATFORM_CUSTOM
    "custom"
  when LibFreetype::TT_PLATFORM_ADOBE
    "Adobe"
  else
    "UNKNOWN"
  end
end

def get_name_id(name_id)
  case name_id
  when LibFreetype::TT_NAME_ID_COPYRIGHT
    "copyright"
  when LibFreetype::TT_NAME_ID_FONT_FAMILY
    "font family"
  when LibFreetype::TT_NAME_ID_FONT_SUBFAMILY
    "font subfamily"
  when LibFreetype::TT_NAME_ID_UNIQUE_ID
    "unique ID"
  when LibFreetype::TT_NAME_ID_FULL_NAME
    "full name"
  when LibFreetype::TT_NAME_ID_VERSION_STRING
    "version string"
  when LibFreetype::TT_NAME_ID_PS_NAME
    "PostScript name"
  when LibFreetype::TT_NAME_ID_TRADEMARK
    "trademark"
  when LibFreetype::TT_NAME_ID_MANUFACTURER
    "manufacturer"
  when LibFreetype::TT_NAME_ID_DESIGNER
    "designer"
  when LibFreetype::TT_NAME_ID_DESCRIPTION
    "description"
  when LibFreetype::TT_NAME_ID_VENDOR_URL
    "vendor URL"
  when LibFreetype::TT_NAME_ID_DESIGNER_URL
    "designer URL"
  when LibFreetype::TT_NAME_ID_LICENSE
    "license"
  when LibFreetype::TT_NAME_ID_LICENSE_URL
    "license URL"
  when LibFreetype::TT_NAME_ID_PREFERRED_FAMILY
    "preferred family"
  when LibFreetype::TT_NAME_ID_PREFERRED_SUBFAMILY
    "preferred subfamily"
  when LibFreetype::TT_NAME_ID_MAC_FULL_NAME
    "Mac full name"
  when LibFreetype::TT_NAME_ID_SAMPLE_TEXT
    "sample text"
  when LibFreetype::TT_NAME_ID_CID_FINDFONT_NAME
    "CID 'findfont' name"
  else
    "UNKNOWN"
  end
end

def print_sfnt_names(face)
  puts "font string entries"

  (0...face.sfnt_name_count).each do |i|
    name = face.sfnt_name(i)
    puts "    %-15s [%s]" % [get_name_id(name.name_id),
                             get_platform_id(name.platform_id)]
  end
end

def print_fixed(face)
  puts "fixed size"

  face.available_sizes.each_with_index do |size, i|
    puts "    %3d: height %d, width %d" % [i, size.height, size.width]
    puts "         size %.3f, x_ppem %.3f, y_ppem %.3f" % [
      size.size / 64.0, size.x_ppem / 64.0,
      size.y_ppem / 64.0
    ]
  end
end

def print_charmaps(face, verbose)
  active = -1
  if face.charmap
    active = face.charmap.index
  end

  puts "charmaps"

  face.charmaps.each_with_index do |charmap, i|
    puts  "    %d: platform %d, encoding %d, language %d%s" % [
      i, charmap.platform_id, charmap.encoding_id,
      charmap.cmap_language_id, i == active ? " (active)" : ""
    ]

    if verbose
      face.set_charmap(charmap)
      charcode, gindex = face.first_char
      while gindex > 0
        puts "        0x%04x => %d" % [charcode, gindex]
        charcode, gindex = face.next_char(charcode, gindex)
      end
    end
  end
end

def run(argv)
  verbose = false
  name_tables = false

  OptionParser.parse(argv) do |parser|
    parser.on("-h", "Help text") { usage }
    parser.on("-v", "Turn on verbose mode") { verbose = true }
    parser.on("-v", "Print SFNT name tables") { name_tables = true }
    parser.unknown_args do |args|
      if args.size < 1
        next usage
      end

      file = args[0]
      face = Freetype::Face.new(file)
      num_faces = face.num_faces

      if num_faces > 1
        puts "There are #{num_faces} faces in this file."
      else
        puts "There is 1 face in this file."
      end

      (0...num_faces).each do |i|
        nface = Freetype::Face.new(file, i)
        puts "\n----- Face number: #{i + 1} -----\n"
        print_name(nface)
        puts
        print_type(nface)
        puts "    glyph count: #{nface.num_glyphs}"

        if name_tables && face.sfnt?
          puts
          print_sfnt_names(nface)
        end

        if face.num_fixed_sizes
          puts
          print_fixed(nface)
        end

        if face.num_charmaps
          puts
          print_charmaps(nface, verbose)
        end
      end
    end
  end
end

run(ARGV)
