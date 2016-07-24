class Book < ActiveRecord::Base 
	has_many :pictures
	validates :name, presence: true
end