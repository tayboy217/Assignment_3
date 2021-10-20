class BooksController < ApplicationController
  # 画像投稿画面
protect_from_forgery

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book)
  end


  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit( :title, :opinion)
  end
end
