require 'test_helper'

class RecipesTest < ActionDispatch::IntegrationTest
 
 def setup
  @chef = Chef.create!(chefname: "Bobby Chef", email: "bobbymrchef@example.com")
  @recipe = Recipe.create(name: "veggie super saute", description: "greate vegetable saute, add carrots and some oil", chef: @chef)
  @recipe2 = @chef.recipes.build(name: "chicken saute", description: "another great chicken dish")
  @recipe2.save
 end
 
 test "should get recipes index" do
   get recipes_url
   assert_response :success
 end
 
 test "should get list of all recipes" do
   get recipes_path
   assert_template 'recipes/index'
   assert_match @recipe.name, response.body
   assert_match @recipe2.name, response.body
 end
 
end
