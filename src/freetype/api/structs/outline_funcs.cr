lib LibFreetype
  struct FT_Outline_Funcs
    move_to : FT_Outline_MoveToFunc
    line_to : FT_Outline_LineToFunc
    conic_to : FT_Outline_ConicToFunc
    cubic_to : FT_Outline_CubicToFunc

    shift : LibC::Int
    delta : LibC::Long
  end
end
