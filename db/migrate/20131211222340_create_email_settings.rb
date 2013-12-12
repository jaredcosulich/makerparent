class CreateEmailSettings < ActiveRecord::Migration
  def change
    create_table :email_settings do |t|
      t.integer :user_id
      t.string :email
      t.boolean :weekly_newsletter, default: true

      t.timestamps
    end
  end
end
