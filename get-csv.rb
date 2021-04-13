require "csv"

albums = CSV.read("albums.csv")[1..]
print albums
