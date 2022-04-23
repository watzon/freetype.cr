lib LibFreetype
  struct FT_StreamRec
    base : LibC::Char*
    size : LibC::Long
    pos : LibC::Long

    descriptor : FT_StreamDesc
    pathname : FT_StreamDesc
    read : FT_Stream_IoFunc
    close : FT_Stream_CloseFunc

    memory : FT_Memory
    cursor : LibC::Char*
    limit : LibC::Char*
  end
end
