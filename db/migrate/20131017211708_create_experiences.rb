class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :summary
      t.text :details
      t.boolean :success
      t.integer :user_id
      t.integer :time
      t.integer :cost
      t.integer :min_age
      t.integer :max_age
      t.boolean :recommended
      t.integer :simple

      t.timestamps
    end
  end
end
