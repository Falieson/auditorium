class CreateResumeAccomplishments < ActiveRecord::Migration
  def change
    create_table :resume_accomplishments do |t|
      t.integer :resume_id
      t.string :description

      t.timestamps
    end
  end
end
