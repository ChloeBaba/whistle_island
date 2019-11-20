class RemovePhotoFromIslands < ActiveRecord::Migration[5.2]
  def change
       remove_column :islands, :photo
  end
end
