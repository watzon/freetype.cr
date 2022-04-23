lib LibFreetype
  type FT_Library = Void*
  type FT_Face = FT_FaceRec*
  type FT_Size = FT_SizeRec*
  type FT_SubGlyph = Void*
  type FT_Module = Void*
  type FT_Size_Request = FT_Size_RequestRec*
  type FT_Face_Internal = Void*
  type FT_Size_Internal = Void*
  type FT_Slot_Internal = Void*
  type FT_Driver = Void*
  type FT_Memory = FT_MemoryRec
  type FT_Glyph = FT_GlyphRec*
  type FT_BitmapGlyph = FT_BitmapGlyphRec*
  type FT_OutlineGlyph = FT_OutlineGlyphRec*
  type FT_ListNode = FT_ListNodeRec*
  type FT_CharMap = FT_CharMapRec*
  type FT_GlyphSlot = FT_GlyphSlotRec*
  type FT_Stream = FT_StreamRec*
  type FT_Stroker = Void*

  type FT_Generic_Finalizer = (Void* -> Void)
  type FT_Stream_IoFunc = (FT_Stream, LibC::Long, LibC::Char*, LibC::Long -> LibC::ULong)
  type FT_Stream_CloseFunc = (FT_Stream -> Void)

  type FT_Alloc_Func = (FT_Memory, LibC::Long -> Void*)
  type FT_Free_Func = (FT_Memory, Void* -> Void*)
  type FT_Realloc_Func = (FT_Memory, LibC::Long, LibC::Long, Void* -> Void*)

  type FT_Outline_MoveToFunc = (FT_Vector*, Void* -> LibC::Int)
  type FT_Outline_LineToFunc = (FT_Vector*, Void* -> LibC::Int)
  type FT_Outline_ConicToFunc = (FT_Vector*, FT_Vector*, Void* -> LibC::Int)
  type FT_Outline_CubicToFunc = (FT_Vector*, FT_Vector*, FT_Vector*, Void* -> LibC::Int)
end
