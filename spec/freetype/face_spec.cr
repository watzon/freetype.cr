require "../spec_helper"

describe Freetype::Face do
  describe "load_char" do
    it "puts a valid char bitmap in the glyph slot" do
      with_face do |subject|
        subject.load_char('A', LibFreetype::FT_LOAD_RENDER)
        # puts "rows: #{subject.glyph_slot.bitmap.rows}, width: #{subject.glyph_slot.bitmap.width}, index: #{subject.glyph_slot.glyph_slot.value.glyph_index}"
        subject.glyph_slot.bitmap.width.positive?.should be_true
      end
    end
  end
end
