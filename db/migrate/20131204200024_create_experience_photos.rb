class CreateExperiencePhotos < ActiveRecord::Migration
  def change
    create_table :experience_photos do |t|
      t.integer :experience_id
      t.string :cloudinary_id
      t.string :href_small
      t.string :href_large
      t.timestamp :date_taken

      t.timestamps
    end
  end
end
