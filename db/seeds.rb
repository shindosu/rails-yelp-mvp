# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts 'Cleaning database...'
Restaurant.destroy_all #Destroy first before seed bc u don’t want dulicates

puts 'Creating restaurants...'
10.times do 
  Restaurant.create!(
    name:         Faker::Restaurant.name,
    address:      Faker::Address.street_address,
    phone_number:  Faker::PhoneNumber.phone_number,
    description:  Faker::Restaurant.description,
    category: %w{Chinese Italian Japanese French Belgian}.sample
  )
end

10.times do 
  Review.create!(
    content:         Faker::Restaurant.name,
    rating:      (0..5).to_a.sample
  )
end

puts 'Finished!'
