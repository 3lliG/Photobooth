class CreatePhotoBooths < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_booths do |t|

      t.timestamps
    end
  end
end
