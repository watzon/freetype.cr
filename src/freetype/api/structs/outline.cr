lib LibFreetype
  struct FT_Outline
    n_contours : LibC::Short
    n_points : LibC::Short

    points : FT_Vector*
    tags : LibC::Char*
    contours : LibC::Short*

    flags : LibC::Int
  end
end
