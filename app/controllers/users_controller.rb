class UsersController < ApplicationController
  def index
  	@book = Book.new
  	@user = User.new
  	@users = User.all
  end

  def show
  	@book = Book.new
    @books = Book.all
  	@user = User.find(params[:id])
  end

  def create
    @book = Book.new
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to users_path
  end
end
