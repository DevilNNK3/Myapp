class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
    	t.attachment		:name
    	t.integer			:book_id
    	t.timestamps
    end
  end
end
