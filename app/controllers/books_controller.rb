class BooksController < ApplicationController
	def index
		@books = Book.all
	end

	def new
		@book = Book.new
	end

	def create
		pp params
		pp "----------------------------------------"
        @book = Book.new(book_params)

        @book.save
        
        if params[:picture].present?
        	@picture = Picture.new
        	@picture.name = params[:picture][:name]
        	@picture.book = @book
        	@picture.save
        end


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


	def show
		@book = Book.find(params[:id])
	end

	private
	def book_params
      params.require(:book).permit(:name, :description)
      # params[:book][:name]
    end
end