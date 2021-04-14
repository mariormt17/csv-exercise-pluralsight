require "csv"

albums = CSV.read("albums.csv")[1..]

def classic_jazz?(album)
  album[2] == "Jazz" and album[3].to_i.between?(1950, 1959)
end

def classic_pop?(album)
  album[2] == "Pop" and album[3].to_i.between?(1980, 1989)
end

def rock_album?(album)
  album[2] == "Rock"
end

def from_michael_jackson?(album)
  album[1] == "Michael Jackson"
end

classic_jazz_albums = []
# Find jazz albums from the 50's
albums.each do |album|
  classic_jazz_albums << album if classic_jazz?(album)
end
puts "Jazz 50's albums: #{classic_jazz_albums}"

classic_pop_albums = []
# Find eighties pop albums
albums.each do |album|
  classic_pop_albums << album if classic_pop?(album)
end
puts "Eighties pop albums: #{classic_pop_albums}"

rock_albums = []
# Find only the rock albums
albums.each do |album|
  rock_albums << album if rock_album?(album)
end
puts "Rock albums: #{rock_albums}"

michael_jackson_albums = []
# Find the albums by Michael Jackson
albums.each do |album|
  michael_jackson_albums << album if from_michael_jackson?(album)
end
puts "Michael Jackson albums: #{michael_jackson_albums}"
