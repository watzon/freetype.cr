require "./spec_helper"

describe Freetype do
  describe "low level" do
    describe "load char" do
      it "should work" do
        with_font_path do |path|
          library = Freetype.get_handle
          face = Pointer(LibFreetype::FT_Face).malloc
          error = LibFreetype.FT_New_Face(library, path, 0, face)
          raise "Failed to load font at path '#{path}'" if error > 0
          error = LibFreetype.FT_Set_Char_Size(face.value, 0, 16 * 64, 300, 300)
          raise "set char size failed" if error > 0

          face = face.value

          error = LibFreetype.FT_Load_Char(face, 'A'.ord, LibFreetype::FT_LOAD_RENDER)
          raise "load char failed" if error > 0
          bitmap = face.value.glyph.value.bitmap
          width = face.value.glyph.value.bitmap.width
          # puts "rows: #{bitmap.rows}, width: #{bitmap.width}, index: #{face.value.glyph.value}"
          width.positive?.should be_true
        end
      end
    end
  end
end
