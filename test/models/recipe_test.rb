require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

  def setup
    @recipe = Recipe.new(title: "Cocochas")
  end

  test "title should be present" do
    @recipe.title = "    "

    assert_not @recipe.valid?
  end

  test "title should not be too short" do
    @recipe.title = "a"*9

    assert_not @recipe.valid?
  end

  test "title should not be too long" do
    @recipe.title = "a"*71

    assert_not @recipe.valid?
  end

  test "last_ten should have 10 items" do
    if Recipe.all.size >= 10
      assert_equal Recipe.last_ten.size, 10
    else
      assert_equal Recipe.last_ten.size, Recipe.all.size
    end
  end

  test "last_ten should be ordered by desc date" do
    last_ten_dates = Recipe.last_ten.map{|x| x.created_at}
    assert_equal last_ten_dates, last_ten_dates.sort.reverse
  end
end
