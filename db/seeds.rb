require 'faker'

puts "Cleaning..."
Restaurant.destroy_all
puts "DB cleaned!"
puts "Creating Restaurants"
5.times do
  restaurant = Restaurant.create(
    name:Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORY.sample,
  )
  puts "#{restaurant} created"
end

puts "Done!"
