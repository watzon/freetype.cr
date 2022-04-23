lib LibFreetype
  struct FT_Palette_Data
    num_palettes : LibC::UShort
    palette_name_ids : LibC::UShort*
    palette_flags : LibC::UShort

    num_palette_entries : LibC::UShort
    palette_entry_name_ids : LibC::UShort
  end
end
