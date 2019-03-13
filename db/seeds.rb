# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all

puts 'Creating restaurants...'
puts 'Creating reviews'
restaurants_attributes = [
  {
    name:    'La Cigale',
    address: 'Nantes',
    phone_number:   Faker::PhoneNumber.phone_number,
    category:   Restaurant::CATEGORY.sample
  },
  {
    name:    'O Bistrot Quai',
    address: 'Nantes',
    phone_number:   Faker::PhoneNumber.phone_number,
    category:   Restaurant::CATEGORY.sample
  },
  {
    name:    'Esprit Tchai',
    address: 'Paris',
    phone_number:   Faker::PhoneNumber.phone_number,
    category:   Restaurant::CATEGORY.sample
  },
  {
    name:    'Pokawa',
    address: 'Nantes',
    phone_number:   Faker::PhoneNumber.phone_number,
    category:   Restaurant::CATEGORY.sample
  },
  {
    name:    'le Naantais',
    address: 'Marseille',
    phone_number:   Faker::PhoneNumber.phone_number,
    category:   Restaurant::CATEGORY.sample
  }
]
restaurants = Restaurant.create!(restaurants_attributes)

10.times do
  reviews = Review.create!(
    content: Faker::Lorem.sentence,
    rating:  rand(0..5),
    restaurant: restaurants.sample
    )
end
puts 'Finished!'
