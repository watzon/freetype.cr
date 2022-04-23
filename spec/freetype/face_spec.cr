def with_face
  patterns = ["Ubuntu-R.ttf", "Vera.ttf"].map { |filename| "/usr/share/fonts/*/" + filename }
  path = Dir.glob(patterns).first.to_s
  puts "loading #{path}"
  face = Freetype::Face.new(path)
  face.set_char_size(0, 16 * 64, 300, 300)

  yield face
end

describe "Freetype::Face" do
  describe "load_char" do
    it "puts a valid char bitmap in the glyph slot" do
      with_face do |subject|
        subject.load_char('A', LibFreetype::FT_LOAD_RENDER)
        subject.glyph_slot.bitmap.width.positive?.should be_true
      end
    end
  end
end
