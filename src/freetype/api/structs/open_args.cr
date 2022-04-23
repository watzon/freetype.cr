lib LibFreetype
  struct FT_Open_Args
    flags : LibC::UInt
    memory_base : LibC::Char*
    memory_size : LibC::Long
    pathname : LibC::Char**
    stream : FT_Stream
    driver : FT_Module
    num_params : LibC::Int
    params : FT_Parameter*
  end
end
