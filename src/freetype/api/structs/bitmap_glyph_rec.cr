lib LibFreetype
  struct FT_BitmapGlyphRec
    root : FT_GlyphRec
    left : LibC::Int
    top : LibC::Int
    bitmap : FT_Bitmap
  end
end
