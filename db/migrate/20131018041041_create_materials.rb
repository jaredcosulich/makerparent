class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.integer :cost
      t.string :purchase
      t.integer :project_id

      t.timestamps
    end
  end
end
