# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

# Meal seeds
Meal.create!(
  title: "Pub-Style Shepherds Pie
  with White Cheddar Mashed Potatoes",
  cooking_time: 45,
  category: 2,
  difficulty_level: 2
)

Meal.create!(
  title: "Cheesy Chicken & Guac Sandos
  with Tomato & Monterey Jack",
  cooking_time: 10,
  category: 1,
  difficulty_level: 0
)

Meal.create!(
  title: "Sweet & Spicy Avocado Toast with Feta
  plus Red Pepper Jam, Cucumbers & Crispy Fried Onions",
  cooking_time: 10,
  category: 1,
  difficulty_level: 0
)

Meal.create!(
  title: "Peppercorn-Crusted Beef Tenderloin
  with Brussels Sprouts Amandine & Mashed Sweet Potatoes",
  cooking_time: 25,
  category: 2,
  difficulty_level: 1
)
Meal.create!(
  title: "Fuego Chicken Fajita Tacos
  with Chicken Thighs, Spicy Guac & Smoky Red Pepper Crema",
  cooking_time: 20,
  category: 2,
  difficulty_level: 0
)

Meal.create!(
  title: "Tex-Mex Plant-Based Protein Pasta Bake
  with Mexican Cheese Blend, Monterey Jack & Scallions",
  cooking_time: 25,
  category: 2,
  difficulty_level: 0
)

Meal.create!(
  title: "Japanese Yuzu Miso-Glazed Trout
  with Cucumber Carrot Salad",
  cooking_time: 30,
  category: 2,
  difficulty_level: 1
)

Meal.create!(
  title: "Bistro Steak & Crispy Potato Wedges
  with Truffle Aioli, Balsamic Ketchup & Mixed Green Salad",
  cooking_time: 45,
  category: 2,
  difficulty_level: 2
)
############################################################
# AddOn seeds

AddOn.create!(
  name: "Double Chocolate Cheesecake",
  servings: 2,
  price: 9.99,
  category: 4
)

AddOn.create!(
  name: "Turkey Sausage & Cheese Egg Bites",
  servings: 4,
  price: 5.99,
  category: 0
)

AddOn.create!(
  name: "Sesame Ginger Chicken Dumplings & Thai Basil Chicken Spring Rolls",
  servings: 6,
  price: 11.99,
  category: 3
)

AddOn.create!(
  name: "B&J Oatmeal
  with Honey, Peanuts & Dried Cherries",
  servings: 3,
  price: 6.99,
  category: 0
)

AddOn.create!(
  name: "Rosemary Focaccia",
  servings: 4,
  price: 9.99,
  category: 3
)

AddOn.create!(
  name: "Liège Waffles",
  servings: 4,
  price: 3.99,
  category: 0
)

AddOn.create!(
  name: "Molten Chocolate Lava Cake",
  servings: 2,
  price: 8.99,
  category: 4
)

AddOn.create!(
  name: "Strawberry Swirl Cheesecake",
  servings: 2,
  price: 9.99,
  category: 4
)

AddOn.create!(
  name: "Maple Pork Breakfast Sausages",
  servings: 4,
  price: 3.99,
  category: 0
)

AddOn.create!(
  name: "Chicken Empanadas",
  servings: 3,
  price: 6.99,
  category: 3
)