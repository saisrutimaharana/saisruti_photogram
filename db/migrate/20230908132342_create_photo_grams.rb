class CreatePhotoGrams < ActiveRecord::Migration[7.0]
  def change
    create_table :photo_grams do |t|
      t.string :title
      t.text :body
      
      t.timestamps
    end
  end
end


rails g model photogram