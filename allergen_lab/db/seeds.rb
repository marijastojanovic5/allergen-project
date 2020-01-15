# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Recipe.destroy_all
RecipeIngredient.destroy_all
Ingredient.destroy_all
Allergy.destroy_all

marija = User.create(name: "Marija")
jenny = User.create(name: "Jenny")
amia = User.create(name: "Amia")

recipe1 = Recipe.create(name:"Baklava",)
recipe2 = Recipe.create(name:"Ice cream")
recipe3 = Recipe.create(name:"Dulce de leche")
recipe4 = Recipe.create(name:"Cookies")

flour = Ingredient.create(name:"Flour", )
milk = Ingredient.create(name:"Milk")
sugar = Ingredient.create(name:"Sugar")

ri1= RecipeIngredient.create(recipe: recipe1,ingredient: sugar)
ri2= RecipeIngredient.create(recipe: recipe2,ingredient: milk)
ri3= RecipeIngredient.create(recipe: recipe3,ingredient: flour)

allergy1= Allergy.create(user: marija,ingredient: milk)
allergy2= Allergy.create(user: jenny,ingredient: flour)
allergy3= Allergy.create(user: amia,ingredient: sugar)




