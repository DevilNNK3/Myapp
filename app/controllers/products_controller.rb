class ProductsController < ApplicationController
	def index
		 @products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
        @product = Product.new(product_params)

        @product.save
        redirect_to products_path
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		@product.assign_attributes(product_params)
		@product.save
		redirect_to products_path
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to products_path
	end

	private
	def product_params
      params.require(:product).permit(:name, :category, :price, :details, :price)
      # params[:book][:name]
    end
end