require 'test_helper'

class StaticPagesTest < ActionDispatch::IntegrationTest

  test "should have at least ten recipes" do
    get '/'
    assert_select "ul#recipes" do
      assert_select "li.home_recipe", 10
    end
  end

  test "should have at least five books" do
    get '/'
    assert_select "ul#books" do
      assert_select "li.home_book", 5
    end
  end
end


