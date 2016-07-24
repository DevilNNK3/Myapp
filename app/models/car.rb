class Car < ActiveRecord::Base 
	validates :name, :brand, :category, :price, presence: true
end