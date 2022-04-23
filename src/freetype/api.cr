require "./api/*"

@[Link(ldflags: "-lfreetype -lharfbuzz -lpng16")]
lib LibFreetype
end
