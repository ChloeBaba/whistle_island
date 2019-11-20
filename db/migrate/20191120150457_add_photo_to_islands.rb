class AddPhotoToIslands < ActiveRecord::Migration[5.2]
  def change
    add_column :islands, :photo, :string
  end
end
