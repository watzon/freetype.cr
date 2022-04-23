lib LibFreetype
  fun FT_Library_Version(library : FT_Library, amajor : LibC::Int*, aminot : LibC::Int*, apatch : LibC::Int*) : Void
  fun FT_Library_SetLcdFilter(library : FT_Library, filter : LibC::Int) : LibC::Int
  fun FT_Face_CheckTrueTypePatents(face : FT_Face) : LibC::Char
  fun FT_Face_SetUnpatentedHinting(face : FT_Face, value : LibC::Char) : LibC::Char

  fun FT_Init_FreeType(alibrary : FT_Library*) : LibC::Int
  fun FT_Done_FreeType(library : FT_Library) : LibC::Int
  fun FT_New_Face(library : FT_Library, filepathname : LibC::Char*, face_index : LibC::Long, aface : FT_Face*) : LibC::Int
  fun FT_New_Memory_Face(library : FT_Library, filebase : LibC::Char*, filesize : LibC::Long, face_index : LibC::Long, aface : FT_Face*) : LibC::Int
  fun FT_Done_Face(face : FT_Face) : LibC::Int
  fun FT_Reference_Face(face : FT_Face) : LibC::Int
  fun FT_Face_Properties(face : FT_Face, num_properties : LibC::UInt, properties : FT_Parameter*) : LibC::Int
  fun FT_Open_Face(library : FT_Library, args : FT_Open_Args*, face_index : LibC::Long, aface : FT_Face*) : LibC::Int
  fun FT_Attach_File(face : FT_Face, filepathname : LibC::Char*) : LibC::Int
  fun FT_Attach_Stream(face : FT_Face, parameters : FT_Open_Args*) : LibC::Int
  fun FT_Set_Char_Size(face : FT_Face, char_width : LibC::Long, char_height : LibC::Long, horz_resolution : LibC::UInt, vert_resolution : LibC::UInt) : LibC::Int
  fun FT_Set_Pixel_Sizes(face : FT_Face, pixel_width : LibC::UInt, pixel_height : LibC::UInt) : LibC::Int
  fun FT_Request_Size(face : FT_Face, req : FT_Size_Request) : LibC::Int
  fun FT_Select_Size(face : FT_Face, strike_index : LibC::Int) : LibC::Int
  fun FT_Set_Transform(face : FT_Face, matrix : FT_Matrix, delta : FT_Vector) : LibC::Int
  fun FT_Load_Glyph(face : FT_Face, glyph_index : LibC::UInt, load_flags : LibC::Int32T) : LibC::Int
  fun FT_Get_Char_Index(face : FT_Face, charcode : LibC::ULong) : LibC::Int
  fun FT_Get_First_Char(face : FT_Face, agindex : LibC::UInt*) : LibC::Int
  fun FT_Get_Next_Char(face : FT_Face, char_code : LibC::ULong, agindex : LibC::UInt*) : LibC::Int
  fun FT_Get_Name_Index(face : FT_Face, glyph_name : LibC::Char*) : LibC::Int
  fun FT_Load_Char(face : FT_Face, char_code : LibC::ULong, load_flags : LibC::Int32T) : LibC::Int
  fun FT_Render_Glyph(slot : FT_GlyphSlot, render_mode : FT_Render_Mode) : LibC::Int
  fun FT_Get_Kerning(face : FT_Face, left_glyph : LibC::UInt, right_glyph : LibC::UInt, kern_mode : LibC::UInt, akerning : FT_Vector*) : LibC::Int
  fun FT_Get_Track_Kerning(face : FT_Face, point_size : LibC::Long, degree : LibC::Int, akerning : FT_Vector*) : LibC::Int
  fun FT_Get_Glyph_Name(face : FT_Face, glyph_index : LibC::UInt, buffer : Void*, buffer_max : LibC::UInt) : LibC::Int
  fun FT_Get_Postscript_Name(face : FT_Face) : LibC::Char*
  fun FT_Select_Charmap(face : FT_Face, encoding : FT_Encoding) : LibC::Int
  fun FT_Set_Charmap(face : FT_Face, charmap : FT_CharMap) : LibC::Int
  fun FT_Get_Charmap_Index(charmap : FT_CharMap) : LibC::Int
  fun FT_Get_FSType_Flags(face : FT_Face) : LibC::UShort
  fun FT_Get_SubGlyph_Info(glyph : FT_GlyphSlot, sub_index : LibC::UInt, p_index : LibC::Int*, p_flags : LibC::UInt*, p_arg1 : LibC::Int*, p_arg2 : LibC::Int*, p_transform : FT_Matrix*) : LibC::Int

  fun FT_Get_CMap_Language_ID(charmap : FT_CharMap) : LibC::ULong
  fun FT_Get_CMap_Format(charmap : FT_CharMap) : LibC::ULong

  fun FT_Face_GetCharVariantIndex(face : FT_Face, charcode : LibC::ULong, variantSelector : LibC::ULong) : LibC::UInt
  fun FT_Face_GetCharVariantIsDefault(face : FT_Face, charcode : LibC::ULong, variantSelector : LibC::ULong) : LibC::UInt
  fun FT_Face_GetVariantSelectors(face : FT_Face) : LibC::UInt32T*
  fun FT_Face_GetVariantsOfChar(face : FT_Face, charcode : LibC::ULong) : LibC::UInt32T*
  fun FT_Face_GetCharsOfVariant(face : FT_Face, variantSelector : LibC::ULong) : LibC::UInt32T*

  fun FT_Palette_Data_Get(face : FT_Face, apalette : FT_Palette_Data*) : LibC::Int
  fun FT_Palette_Select(face : FT_Face, palette_index : LibC::UShort, apalette : FT_Color**)
  fun FT_Palette_Set_Foreground_Color(face : FT_Face, foreground_color : FT_Color) : LibC::Int

  fun FT_Get_Color_Glyph_Layer(face : FT_Face, base_glyph : LibC::UInt, aglyph_index : LibC::UInt*, acolor_index : LibC::UInt*, iterator : FT_LayerIterator*) : LibC::Char

  fun FT_New_Glyph(library : FT_Library, format : FT_Glyph_Format, aglyph : FT_Glyph*) : LibC::Int
  fun FT_Get_Glyph(slot : FT_GlyphSlot, aglyph : FT_Glyph*) : LibC::Int
  fun FT_Glyph_Copy(source : FT_Glyph, target : FT_Glyph*) : LibC::Int
  fun FT_Glyph_Transform(glyph : FT_Glyph, matrix : FT_Matrix*, delta : FT_Vector*) : LibC::Int
  fun FT_Glyph_Transform(glyph : FT_Glyph, matrix : FT_Matrix*, delta : FT_Vector*) : LibC::Int
  fun FT_Glyph_Get_CBox(glyph : FT_Glyph) : Void
  fun FT_Glyph_Stroke(pglyph : FT_Glyph*, stroker : FT_Stroker, destroy : LibC::Char) : LibC::Int
  fun FT_Glyph_StrokeBorder(pglyph : FT_Glyph*, stroker : FT_Stroker, inside : LibC::Char, destroy : LibC::Char) : LibC::Int
  fun FT_Glyph_To_Bitmap(the_glyph : FT_Glyph*, render_mode : FT_Render_Mode, origin : FT_Vector*, destroy : LibC::Char) : LibC::Int
  fun FT_Done_Glyph(the_glyph : FT_Glyph) : Void

  fun FT_New_Size(face : FT_Face, size : FT_Size*) : LibC::Int
  fun FT_Done_Size(size : FT_Size) : LibC::Int
  fun FT_Activate_Size(size : FT_Size) : LibC::Int

  fun FT_Get_Font_Format(face : FT_Face) : LibC::Char*

  fun FT_Get_Sfnt_Name_Count(face : FT_Face) : LibC::UInt
  fun FT_Get_Sfnt_Name(face : FT_Face, idx : LibC::UInt, aname : FT_SfntName*) : LibC::Int
  fun FT_Get_Sfnt_LangTag(face : FT_Face, langID : LibC::UInt, alangTag : FT_SfntLangTag*) : LibC::Int

  fun FT_Stroker_New(library : FT_Library, astroker : FT_Stroker*) : LibC::Int
  fun FT_Stroker_Set(stroker : FT_Stroker, radius : LibC::Long, line_cap : FT_Stroker_LineCap, line_join : FT_Stroker_LineJoin, miter_limit : LibC::Long) : LibC::Int
  fun FT_Stroker_Rewind(stroker : FT_Stroker) : LibC::Int
  fun FT_Stroker_ParseOutline(stroker : FT_Stroker, outline : FT_Outline*, opened : LibC::Char) : LibC::Int
  fun FT_Stroker_Done(stroker : FT_Stroker) : Void
  fun FT_Stroker_BeginSubPath(stroker : FT_Stroker, to : FT_Vector*, open : LibC::Char) : LibC::Int
  fun FT_Stroker_EndSubPath(stroker : FT_Stroker) : LibC::Int
  fun FT_Stroker_LineTo(stroker : FT_Stroker, to : FT_Vector) : LibC::Int
  fun FT_Stroker_ConicTo(stroker : FT_Stroker, control : FT_Vector*, to : FT_Vector*) : LibC::Int
  fun FT_Stroker_CubicTo(stroker : FT_Stroker, control1 : FT_Vector*, control2 : FT_Vector*, to : FT_Vector*) : LibC::Int
  fun FT_Stroker_GetBorderCounts(stroker : FT_Stroker, border : FT_StrokerBorder, anum_points : LibC::UInt*, anum_contours : LibC::UInt*) : LibC::Int
  fun FT_Stroker_ExportBorder(stroker : FT_Stroker, border : FT_StrokerBorder, outline : FT_Outline*) : LibC::Int
  fun FT_Stroker_GetCounts(stroker : FT_Stroker, anum_points : LibC::UInt, anum_contours : LibC::UInt) : LibC::Int
  fun FT_Stroker_Export(stroker : FT_Stroker, outline : FT_Outline*) : Void

  fun FT_Outline_GetInsideBorder(outline : FT_Outline*) : FT_StrokerBorder
  fun FT_Outline_GetOutsideBorder(outline : FT_Outline*) : FT_StrokerBorder
  fun FT_Outline_Get_BBox(outline : FT_Outline*, abbox : FT_BBox*) : LibC::Int
  fun FT_Outline_Get_CBox(outline : FT_Outline*, abbox : FT_BBox*) : Void
end
