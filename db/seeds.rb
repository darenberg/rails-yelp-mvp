# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'faker'

5.times do
  restaurant = Restaurant.new(
    name: Faker::Book.title,
    address: Faker::Lorem.paragraphs(number: 3).join("\n\n"),
    phone_number: Faker::Lorem.paragraphs(number: 3).join("\n\n"),
    category: %w[french italian japanese chinese belgian].sample
  )
  restaurant.save
end

5.times do
  review = Review.new(
    rating: [0..5].sample,
    address: Faker::Lorem.paragraphs(number: 3).join("\n\n")
  )
  review.save
end
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
