class BooksController < ApplicationController
  before_action :find_book, only: %i[show edit update destroy]
  def index
    @books = Book.all
  end

  def show; end

  def edit
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book
    else
      render 'edit'
    end
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:name, :writer, :year)
  end
end
