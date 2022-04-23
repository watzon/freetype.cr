def with_face
  patterns = ["Ubuntu-R.ttf", "Vera.ttf"].map { |filename| "/usr/share/fonts/*/" + filename }
  path = Dir.glob(patterns).first.to_s
  puts "loading #{path}"
  yield Freetype::Face.new(path)
end

describe "Freetype::Face" do
  describe "load_char" do
    it "puts a valid char bitmap in the glyph slot" do
      with_face do |subject|
        subject.glyph_slot.bitmap.width.positive?.should be_true
      end
    end
  end
end
