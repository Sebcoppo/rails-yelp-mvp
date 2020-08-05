# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
la_fourchette = { name: "La Fourchette", address: "Quai Rive Neuve", category: "french" }
pizza_mamma =  { name: "Pizza Mamma", address: "Place Castellane", category: "italian" }
baie_along =  { name: "Baie D'Along", address: "Boulevazrd Bara", category: "chinese" }
la_friterie =  { name: "La Friterie", address: "Place de la Joliette", category: "belgian" }
yomo_sushi =  { name: "Yomo SUshi", address: "La Valentine", category: "japanese" }


[ la_fourchette, pizza_mamma, baie_along, la_friterie, yomo_sushi ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
