class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.date :birthdate
      t.string :headline
      t.text :about_present
      t.text :about_past
      t.text :about_future

      t.timestamps
    end
  end
end
