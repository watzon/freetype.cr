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

describe "Freetype::Face" do
  describe "load_char" do
    it "puts a valid char bitmap in the glyph slot" do
      with_face do |subject|
        subject.load_char('A', LibFreetype::FT_LOAD_RENDER)
        puts "rows: #{subject.glyph_slot.bitmap.rows}, width: #{subject.glyph_slot.bitmap.width}, index: #{subject.glyph_slot.glyph_slot.value.glyph_index}"
        subject.glyph_slot.bitmap.width.positive?.should be_true
      end
    end
  end
end

describe "Freetype" do
  describe "load_char" do
    with_font_path do |path|
      library = Freetype.get_handle
      face = Pointer(LibFreetype::FT_Face).malloc
      error = LibFreetype.FT_New_Face(library, path, 0, face)
      raise "Failed to load font at path '#{path}'" if error > 0
      error = LibFreetype.FT_Set_Char_Size(face.value, 0, 16 * 64, 300, 300)
      raise "set char size failed" if error > 0

      face = face.value

      puts "-" * 80
      puts face.value.inspect
      puts "-" * 80

      puts face.value.family_name.value

      error = LibFreetype.FT_Load_Char(face, 'A'.ord, LibFreetype::FT_LOAD_RENDER)
      raise "load char failed" if error > 0
      bitmap = face.value.glyph.value.bitmap
      width = face.value.glyph.value.bitmap.width
      puts "rows: #{bitmap.rows}, width: #{bitmap.width}, index: #{face.value.glyph.value}"
      width.positive?.should be_true
    end
  end
end
