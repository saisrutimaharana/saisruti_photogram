class RenamePhotoGramsToPhotograms < ActiveRecord::Migration[7.0]
  def change
    rename_table :photo_grams, :photograms
  end
end
