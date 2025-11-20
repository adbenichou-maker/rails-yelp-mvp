# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all
puts "Database cleaned."

puts "Creating restaurants..."

Restaurant.create!(
  name: "Dishoom",
  address: "7 Boundary St, London E2 7JE",
  phone_number: "07 34 87 12 45",
  category: "chinese"
)

Restaurant.create!(
  name: "Pizza East",
  address: "56A Shoreditch High St, London E1 6PQ",
  phone_number: "06 58 44 91 23",
  category: "italian"
)

Restaurant.create!(
  name: "McDo",
  address: "3 rue Barbes, 75019 Paris",
  phone_number: "01 42 55 19 84",
  category: "french"
)

Restaurant.create!(
  name: "Papa Mario's Pizza",
  address: "19 avenue de Lattre de Tassigny, 92340 Bourg-la-Reine",
  phone_number: "07 51 62 93 40",
  category: "italian"
)

Restaurant.create!(
  name: "Numidia",
  address: "9 boulevard de Belleville, 75010 Paris",
  phone_number: "01 47 21 39 28",
  category: "japanese"
)

Restaurant.create!(
  name: "Bencoch'",
  address: "11 rue Civiale, 75010 Paris",
  phone_number: "06 72 18 45 76",
  category: "belgian"
)

puts "Done!"

