class AddSloganToIslands < ActiveRecord::Migration[5.2]
  def change
    add_column :islands, :slogan, :string
  end
end
