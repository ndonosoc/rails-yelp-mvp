# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '444-4444',
    category:  'chinese',
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '444-4444',
    category:  'italian',
  },
  {
    name:         'Guerrin',
    address:      'Corrientes 4000',
    phone_number: '444-4444',
    category:  'italian',
  },
  {
    name:         'Cuartito',
    address:      'Talcahuano 1000',
    phone_number: '444-4444',
    category:  'japanese',
  },
  {
    name:         'Guitarrita',
    address:      'Niceto Vega 4700',
    phone_number: '444-4444',
    category:  'belgian',
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

Review.create(content: "123", rating: rand(1..5), restaurant_id: rand(1..4))
