class AuthorsController < ApplicationController
  before_action :set_author, only: %i[show edit update destroy]

  def index
    @authors = params[:query].present? ? Author.search(params[:query]) : Author.all
  end

  def show
    @author = Author.find(params[:id])
    @books = @author.books
  end

  def new
    @author = Author.new
  end

  def edit
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to author_path(@author), notice: "Author created"
    else
      render :new
    end
  end

  def update
    if @author.update(author_params)
      redirect_to author_path(@author), notice: "Author updated"
    else
      render :edit
    end
  end

  def destroy
    @author.destroy
    redirect_to authors_path, notice: "Author deleted"
  end

  private

  def set_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:name, :bio)
  end
end
