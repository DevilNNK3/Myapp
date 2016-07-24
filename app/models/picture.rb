class Picture < ActiveRecord::Base 
	belongs_to :book
	has_attached_file :name, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :name, content_type: /\Aimage\/.*\Z/
end