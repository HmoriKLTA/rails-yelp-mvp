require 'faker'

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

CATEGORY = ["Chinese", "Italian", "Japanese", "French", "Belgian"]

puts 'Cleaning out the DB...'
Restaurant.destroy_all

puts "Creating restaurants...."
5.times do
  # inside of the seeds, you can use Pet.create! to stop the seeds if it fails
  Restaurant.create!(
    name: Faker::Restaurant.name,
    phone_number: Faker::PhoneNumber.phone_number,
    address: Faker::Address.street_address,
    category: CATEGORY.sample
  )
end
puts "... created #{Restaurant.count} restaurants."
