class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.page(params[:page])
    @user = current_user
  end
  def new
  end
  def create
    @books = Book.all
    @user = current_user
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to books_path
    else
      render :index
    end
  end
  def show
    @book = Book.find(params[:id])
    @user = @book.user
    @books = Book.all
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :caption)
  end
end
