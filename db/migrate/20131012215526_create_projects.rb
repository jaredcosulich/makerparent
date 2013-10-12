class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.attachment :photo
      t.integer :min_time
      t.integer :max_time
      t.integer :min_age
      t.integer :max_age
      t.integer :min_cost
      t.integer :max_cost

      t.timestamps
    end
  end
end
