require "csv"

def classic_jazz?(album)
  album[2] == "Jazz" and album[3].to_i.beetwen?(1950, 1959)
end

albums = CSV.read("albums.csv")[1..]

# Find jazz albums from the 50's

