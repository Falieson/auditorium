class AddCompanyUrlToResume < ActiveRecord::Migration
  def change
  	add_column :resumes, :company_url, :string
  end
end
