class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.date :published

      t.timestamps
    end
  end
end
