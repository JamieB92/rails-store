# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

clothing = Category.find_or_create_by!(name: "Clothing")
accessories = Category.find_or_create_by!(name: "Accessories")

tshirt = Product.find_or_create_by!(name: "T-shirt", price: 20, stock: 40, category: clothing)
jeans = Product.find_or_create_by!(name: "Jeans", price: 45, stock: 50, category: clothing)
watch = Product.find_or_create_by!(name: "Watch", price: 100, stock: 5, category: accessories)
hat = Product.find_or_create_by!(name: "Hat", price: 25, stock: 12, category: accessories)

Review.find_or_create_by!(name: "John Smith", stars: 4, comment: "This is the best T-shirt", product: tshirt)
