class CreateProfileAccomplishments < ActiveRecord::Migration
  def change
    create_table :profile_accomplishments do |t|
      t.integer :profile_id
      t.string :description
      t.string :url
      t.date :published

      t.timestamps
    end
  end
end
