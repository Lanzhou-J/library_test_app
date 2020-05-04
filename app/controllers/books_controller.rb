class BooksController < ApplicationController
  def index
  end

  def new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book
    else
      render :new
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def update
    if @book.update(book_params)
      redirect_to @book
    else
      render :edit
    end
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :author)
  end

end
