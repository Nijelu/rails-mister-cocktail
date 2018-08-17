# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_list = JSON.parse(open(url).read)['drinks']

ingredients_list.each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

# mojito_url = "https://static.750g.com/images/622-auto/b520523117d647dab6b842a36f4cc7f5/mojito-le-vrai.jpg"
# cocktail = Cocktail.new(name: 'Mojito')
# cocktail.remote_photo_url = mojito_url
# cocktail.save
