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

Review.destroy_all
Restaurant.destroy_all

puts "Creating restaurants..."

Restaurant.create!(
  name: "Epicure",
  address: "112 Rue du Faubourg Saint-Honoré, 75008 Paris",
  phone_number: "01 09 09 78 23",
  category: "french"
)

Restaurant.create!(
  name: "Ramen",
  address: "29 Rue Mazarine, 75006 Paris",
  phone_number: "01 63 45 28 45",
  category: "japanese"
)

Restaurant.create!(
  name: "Pizza",
  address: "37 Avenue Hoche, 75008 Paris",
  phone_number: "01 47 65 45 46",
  category: "italian"
)

Restaurant.create!(
  name: "Nem",
  address: "10 Avenue d'Iéna, 75116 Paris",
  phone_number: "01 45 87 87 87",
  category: "chinese"
)

Restaurant.create!(
  name: "Brussels",
  address: "1 Rue de Bruxelles, 75009 Paris",
  phone_number: "01 45 67 87 98",
  category: "belgian"
)

puts "Finished! Created #{Restaurant.count} restaurants."
