# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
Flat.destroy_all
4.times do
  flat = Flat.new(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    description: Faker::Books::Lovecraft.paragraph,
    price_per_night: rand(1..100),
    number_of_guests: rand(1..5)
  )
  flat.save!
end
