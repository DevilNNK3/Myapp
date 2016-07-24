class CarsController < ApplicationController
	def index
		@cars = Car.all
	end

	def new
		@car = Car.new
	end

	def create
        @car = Car.new(car_params)
		@car.save
        redirect_to cars_path
	end

	def edit
		@car = Car.find(params[:id])
	end

	def update
		@car = Car.find(params[:id])
		@car.assign_attributes(car_params)
		@car.save
		redirect_to cars_path
	end

	def destroy
		@car = Car.find(params[:id])
		@car.destroy
		redirect_to cars_path
	end

	def show
		@car = Car.find(params[:id])
	end

	private
	def car_params
      params.require(:car).permit(:name, :brand, :category, :price)
      # params[:book][:name]
    end
end