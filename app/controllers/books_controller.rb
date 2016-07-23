class BooksController < ApplicationController
	def index
		@books = Book.all
	end

	def new
		@book = Book.new
	end

	def create
        @book = Book.new(book_params)

        @book.save
        redirect_to books_path
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])
		@book.assign_attributes(book_params)
		@book.save
		redirect_to books_path
	end

	def destroy
		@book = Book.find(params[:id])
		@book.destroy
		redirect_to books_path
	end

	private
	def book_params
      params.require(:book).permit(:name, :description)
      # params[:book][:name]
    end
end