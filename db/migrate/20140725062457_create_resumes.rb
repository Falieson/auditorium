class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :company_title
      t.text :company_description
      t.string :company_industry
      t.string :job_title
      t.text :job_description
      t.date :firstday
      t.date :lastday
      t.text :personal_note

      t.timestamps
    end
  end
end
