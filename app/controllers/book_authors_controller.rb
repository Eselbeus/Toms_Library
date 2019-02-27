class BookAuthorsController < ApplicationController
  def create
    @book_author = BookAuthor.create(book_id: params[:book_id], author_id: params[:book_author][:author])
    redirect_to book_path(params[:book_id])
  end
  def destroy
    BookAuthor.destroy(params[:book_id])
    redirect_to book_path(params[:id])
  end
end
