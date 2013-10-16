class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.text :text
      t.integer :position
      t.attachment :image

      t.timestamps
    end
  end
end
