class CreateCharacterLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :character_locations do |t|
      t.string :coordinates
      t.string :character_img_file
      t.references :image, null: false, foreign_key: true

      t.timestamps
    end
  end
end
