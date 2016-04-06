class BooksController < ApplicationController
  def new
    @books = Book.new
  end

  def create
    @books = Book.new(book_params)
    if @books.save
      flash[:info] = I18n.t('es.flash.book.created')
      redirect_to @books
    else
      render 'new'
    end
  end

  def show
    @books = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title)
  end
end