lib LibFreetype
  struct FT_Size_RequestRec
    type : FT_Size_Request_Type
    width : LibC::Long
    height : LibC::Long
    horiResolution : LibC::UInt
    vertResolution : LibC::UInt
  end
end
