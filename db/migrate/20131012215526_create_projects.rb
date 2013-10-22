class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :url
      t.attachment :photo
      t.integer :experiences_count
      t.integer :bookmarks_count
      t.integer :estimated_time
      t.integer :estimated_age
      t.integer :estimated_cost
      t.integer :estimated_simple
      t.integer :min_time
      t.integer :max_time
      t.integer :min_age
      t.integer :max_age
      t.integer :min_cost
      t.integer :max_cost
      t.integer :average_simple

      t.timestamps
    end
  end
end
