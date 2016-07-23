class Movie < ActiveRecord::Base 
	validates :title, :catagory, :director, presence: true
end