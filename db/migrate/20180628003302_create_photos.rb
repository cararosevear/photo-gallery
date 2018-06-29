class CreatePhotos < ActiveRecord::Migration[5.2]
 def down
    drop_table :photos
  end
  def change
    create_table :photos do |t|
      t.string :name
      t.text :description
      t.string :image
      t.integer :user_id
      t.timestamps
    end
  end
end
