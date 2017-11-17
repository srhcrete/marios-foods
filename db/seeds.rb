# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Review.destroy_all
User.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.dish,
  cost: Faker::Commerce.price,
  countryOrigin: Faker::Address.country)
end

50.times do |index|
  User.create!(username: Faker::GameOfThrones.character)
end

250.times do |index|
  Review.create!(author: Faker::GameOfThrones.character,
  content: Faker::Lorem.paragraphs(3, true),
  rating: Faker::Number.between(1,5))
end
