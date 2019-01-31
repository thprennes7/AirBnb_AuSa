# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
City.create!(name: Faker::Address.city)
end

20.times do
  DogSitter.create!(name: Faker::Name.first_name, city_id: City.all.sample.id)
end

20.times do
  Dog.create!(name: Faker::Beer.name, city_id: City.all.sample.id)
end

15.times do
  Stroll.create!(city_id: City.all.sample.id, dog_sitter_id: DogSitter.all.sample.id, dog_id: Dog.all.sample.id)
end
