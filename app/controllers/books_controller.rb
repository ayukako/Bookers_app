class BooksController < ApplicationController


  def create
    book = Book.new(book_params)
    if book.save
    redirect_to book_new_path(book.id), notice: 'Book was successfully created.'
    else
     flash.now[:alert] = 'error'
     render :index
    end
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

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
