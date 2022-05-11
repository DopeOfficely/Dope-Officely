class BooksController < ApplicationController
  def index
    books = Book.all
    render json: books
  end

  def show
    book = Book.find(params[:id])
    render json: book
  end

  def create
    book = Book.new(book_params)
    if book.save
      render json: book
    else
      render json: { error: "Unable to create book"}, status: :unprocessable_entity
    end
  end

  def update
    book = Book.find(params[:id])
    if book&.update(book_params)
      render json: { message: "book updated successfully" }, status: :ok
    else
      render json: { error: "Unable to update booker"}, status: :unprocessable_entity
    end
  end

  def destroy
    book = Book.find(params[:id])
    if book
      book.destroy
      render json: { message: "Book deleted successfully" }, status: :ok
    else
      render json: { error: "Unable to delete book"}, status: :unprocessable_entity
    end
  end

  private

  def book_params
    params.require(:book).permit(:start_time, :end_time, :desk_id, :user_id)
  end
end
