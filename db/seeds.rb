require 'open-uri'
require 'json'

Ingredient.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

ingredients = JSON.parse(open(url).read)

ingredients['drinks'].each do |ingredient|
  Ingredient.create!(name: ingredient['strIngredient1'])
end

Cocktail.create(name: "Old Fashioned")
Cocktail.create(name: "Mojito")
Cocktail.create(name: "Caipi")
Cocktail.create(name: "Martini")
Cocktail.create(name: "Margarita")
Cocktail.create(name: "White Russian")
