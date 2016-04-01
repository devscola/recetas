require 'test_helper'

class RecipesTest < ActionDispatch::IntegrationTest
  test "invalid new recipe information" do
    get new_recipe_path
    assert_no_difference 'Recipe.count' do
      post recipes_path, recipe: { title:  "" }
    end
    assert_select 'div.alert-danger'
    assert_template 'recipes/new'
  end

  test "valid new recipe information" do
    get new_recipe_path
    assert_difference 'Recipe.count', 1 do
      post recipes_path, recipe: { title:  "Patatas bravas" }
    end
    follow_redirect!
    assert_not flash.empty?
    assert_select 'div.alert-info'
    assert_template 'recipes/show'
  end
end
