class BooksController < ApplicationController
  # 画像投稿画面
  def new
     @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path
  end

  def index
    @books = Book.all
  end

  def show
  end
  
  def edit
  end
  
  def destroy
  end
  
  private

  def book_params
    params.require(:book).permit(:sname, :image, :self_introduction)
  end
  
end
