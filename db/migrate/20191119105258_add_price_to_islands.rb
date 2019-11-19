class AddPriceToIslands < ActiveRecord::Migration[5.2]
  def change
    add_column :islands, :price, :integer
  end
end
