require 'test_helper'

class BooksTest < ActionDispatch::IntegrationTest
  test "invalid new book information" do
    get new_book_path
    assert_no_difference 'Book.count' do
      post books_path, book: { title:  "" }
    end
    assert_select 'div.alert-danger'
    assert_template 'books/new'
  end

  test "valid new book information" do
    get new_book_path
    assert_difference 'Book.count', 1 do
      post books_path, book: { title:  "Arroces del mundo" }
    end
    follow_redirect!
    assert_not flash.empty?
    assert_select 'div.alert-info'
    assert_template 'books/show'
  end
end
