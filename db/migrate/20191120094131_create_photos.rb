class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.references :island, foreign_key: true
      t.string :photo_path

      t.timestamps
    end
  end
end
