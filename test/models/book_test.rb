require 'test_helper'

class BookTest < ActiveSupport::TestCase

  test "last_five should have 5 items" do
    if Book.all.size >= 5
      assert_equal Book.last_five.size, 5
    else
      assert_equal Book.last_five.size, Book.all.size
    end
  end

  test "last_five should be ordered by desc date" do
    last_five_dates = Book.last_five.map{|x| x.created_at}
    assert_equal last_five_dates, last_five_dates.sort.reverse
  end
end
