# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.time do
  ingredient = Ingredient.new(name: Faker::Food.ingredient)
  ingredient.save
end

10.time do
  cocktail = Cocktail.new(name: Faker::Book.title)
  cocktail.save
end

Cocktail.all.each do |cocktail|
  dose = Dose.new(description: Faker::Food.measurement, cocktail: cocktail, ingredient: Ingredient)
  dose.save
end

