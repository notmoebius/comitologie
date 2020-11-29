# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

puts "je fais du ménage avant de jouer"
puts "Emptying tables"
Theme.destroy_all
Type.destroy_all
Nature.destroy_all
Group.destroy_all
puts "--> All tables are empty"

puts "Je charges les thèmes"
CSV.foreach(Rails.root.join('themes.csv'), headers: true) do |row|
  Theme.create! do |t|
    t.label = row[0]
  end
end
puts "ok pour les thèmes"
puts "*----------*"

puts "Je charges les types"
CSV.foreach(Rails.root.join('types.csv'), headers: true) do |row|
  Type.create! do |u|
    u.label = row[0]
  end
end
puts "ok pour les types"
puts "*----------*"

puts "Je charges les natures"
CSV.foreach(Rails.root.join('types.csv'), headers: true) do |row|
  Nature.create! do |n|
    n.label = row[0]
  end
end
puts "ok pour les natures"
puts "*----------*"

puts "Je charges les groupes"
CSV.foreach(Rails.root.join('groupes.csv'), headers: true) do |row|
  Group.create! do |g|
    g.target_description = row[4]
    g.pilote = row[6]
    g.name = row[3]
    g.mission = row[7]
    g.frequency = row[8]
    g.branch = row[5]
    puts g.name
  end
end
puts "ok pour les groupes"
puts "*----------*"