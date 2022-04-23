lib LibFreetype
  struct FT_MemoryRec
    user : Void*
    alloc : FT_Alloc_Func
    free : FT_Free_Func
    realloc : FT_Realloc_Func
  end
end
