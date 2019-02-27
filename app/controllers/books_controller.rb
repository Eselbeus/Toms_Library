class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @book_author = BookAuthor.new
    @authors = Author.all
  end

  def update
    # byebug
    # @book_author = BookAuthor.new
    # @book_author.author_id = book_params[:author_id]
    # @book_author.book_id = book_params[:book_id]
    # # byebug
    # # @book_author.authors = []
    # author = Author.find(book_params[:author_id])
    # @book_author.author << author
    #
    # render :show
    "hey"
  end

  private

  def book_params
    params.require(:book).permit(:author_id, :book_id)
  end

end
