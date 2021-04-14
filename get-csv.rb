require "csv"

AUTHOR = 1
GENRE = 2
YEAR = 3

# Find jazz albums from the 50's
puts "------------------------------------------------"
puts "Jazz albums from the 50's"
CSV.read("albums.csv")[1..]
  .select do |album|
    album[GENRE] == "Jazz" and album[YEAR].to_i.between?(1950, 1959)
  end
  .sort_by do |album|
    album[YEAR].to_i
  end
  .each do |album|
    puts album.join(',')
  end

# Find eighties pop albums
puts "------------------------------------------------"
puts "Pop albums from the 80's"
CSV.read("albums.csv")[1..]
  .select do |album|
    album[GENRE] == "Pop" and album[YEAR].to_i.between?(1980, 1989)
  end
  .sort_by do |album|
    album[YEAR].to_i
  end
  .each do |album|
    puts album.join(',')
  end

# Find only the rock albums
puts "------------------------------------------------"
puts "Rock albums"
CSV.read("albums.csv")[1..]
  .select do |album|
    album[GENRE] == "Rock"
  end
  .sort_by do |album|
    album[YEAR].to_i
  end
  .each do |album|
    puts album.join(',')
  end

# Find the albums from Michael Jackson
puts "------------------------------------------------"
puts "Michael Jackson albums"
CSV.read("albums.csv")[1..]
  .select do |album|
    album[AUTHOR] == "Michael Jackson"
  end
  .sort_by do |album|
    album[YEAR].to_i
  end
  .each do |album|
    puts album.join(',')
  end
