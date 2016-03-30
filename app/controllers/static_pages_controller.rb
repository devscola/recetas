class StaticPagesController < ApplicationController
  def home
    @recipes = Recipe.last_ten
  end
end
