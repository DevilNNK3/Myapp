class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
    	t.string          :name
    	t.string          :brand
    	t.string          :category
    	t.string          :price
    	t.timestamps
    end
  end
end
