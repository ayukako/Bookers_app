class BooksController < ApplicationController

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)


  end

  def index
    @book = Book.all
    @book_new = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end



private

def book_params
  params.require(:book).permit(:title, :body)
end

end