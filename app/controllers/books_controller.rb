class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]
  def index
    if params[:author_id]
      @author = Author.find(params[:author_id])
      @books = author.books
    else
      @books = params[:query].present? ? Book.search(params[:query]) : Book.all
    end
  end

  def show
  end

  def new
    @book = Book.new
    @book.author_id = params[:author_id] if params[:author_id].present?
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book, notice: "Book created"
    end
  end

  def update
    if @book.update(book_params)
      redirect_to @book, notice: "Book updated"
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path, notice: "Book deleted"
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :genre, :description, :author_id)
  end
end
