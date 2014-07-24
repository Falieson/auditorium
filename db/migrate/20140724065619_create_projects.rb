class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :git_url
      t.string :demo_url
      t.decimal :version
      t.date :lastpublished
      t.date :firstpublished

      t.timestamps
    end
  end
end
