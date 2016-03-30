require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

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
