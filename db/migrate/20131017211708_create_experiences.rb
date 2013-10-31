class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.text :details
      t.boolean :success
      t.integer :project_id
      t.integer :user_id
      t.integer :time
      t.integer :cost
      t.integer :min_age
      t.boolean :recommended
      t.integer :simple

      t.timestamps
    end
  end
end
