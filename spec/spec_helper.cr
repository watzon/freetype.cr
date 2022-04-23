require "spec"
require "../src/freetype"

def with_face
  with_font_path do |path|
    puts "loading #{path}"
    face = Freetype::Face.new(path)
    face.set_char_size(0, 16 * 64, 300, 300)

    yield face
  end
end

def with_font_path
  patterns = ["Ubuntu-R.ttf", "Vera.ttf"].map { |filename| "/usr/share/fonts/*/" + filename }
  path = Dir.glob(patterns).first.to_s
  yield path
end
