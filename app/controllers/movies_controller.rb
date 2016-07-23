class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

	def new
		@movie = Movie.new
	end

	def create
        @movie = Movie.new(movie_params)

        @movie.save
        redirect_to movies_path
	end

	def edit
		@movie = Movie.find(params[:id])
	end

	def update
		@movie = Movie.find(params[:id])
		@movie.assign_attributes(movie_params)
		@movie.save
		redirect_to movies_path
	end

	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		redirect_to movies_path
	end

	private
	def movie_params
      params.require(:movie).permit(:title, :catagory, :director)
      # params[:book][:name]
    end
end