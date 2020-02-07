# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cheese = Ingredient.new
cheese.name = 'Cheese'
cheese.unit = 'Unit'
cheese.save

meat = Ingredient.new
meat.name = 'Meat'
meat.unit = '100 gr.'
meat.save

bread = Ingredient.new
bread.name = 'Bread'
bread.unit = 'Unit'
bread.save

burger = Meal.new
burger.name = 'Simple Burger'
burger.save

burger1 = MealDetail.new
burger1.ingredient = bread
burger1.quantity = 1
burger1.save

burger2 = MealDetail.new
burger2.ingredient = meat
burger2.quantity = 1
burger2.save

burger3 = MealDetail.new
burger3.ingredient = cheese
burger3.quantity = 1
burger3.save