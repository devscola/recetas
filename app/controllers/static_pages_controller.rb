class StaticPagesController < ApplicationController
  def home
    @recipes = Recipe.last_ten
    @books = Book.last_five
  end
end
