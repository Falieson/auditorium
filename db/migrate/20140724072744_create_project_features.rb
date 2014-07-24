class CreateProjectFeatures < ActiveRecord::Migration
  def change
    create_table :project_features do |t|
      t.text :description
      t.integer :project_id

      t.timestamps
    end
  end
end
