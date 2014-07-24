class CreateProjectMentions < ActiveRecord::Migration
  def change
    create_table :project_mentions do |t|
      t.string :title
      t.string :url
      t.date :published
	  t.integer :project_id
      t.timestamps
    end
  end
end
