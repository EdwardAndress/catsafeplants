# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'csv'

Plant.delete_all

File.open('./db/safe_plants.csv') do |file|
  CSV.parse(file, headers: true) do |row|
    Plant.create(common_name: row['common_name'], latin_name: row['latin_name'], cat_safe: row['cat_safe'])
  end
end

File.open('./db/toxic_plants.csv') do |file|
  CSV.parse(file, headers: true) do |row|
    Plant.create(common_name: row['common_name'], latin_name: row['latin_name'], cat_safe: row['cat_safe'])
  end
end

p "Db now contains #{Plant.count} plants"
