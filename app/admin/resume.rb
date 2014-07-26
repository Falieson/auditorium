ActiveAdmin.register Resume do
  permit_params  :company_title, :company_description, :company_industry, :job_title, :job_description, :firstday, :lastday, :personal_note, :company_url,
   resume_accomplishments_attributes: [:resume_id, :description, :_destroy]

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs
    f.buttons
  end

  form do |f|
    f.inputs "Company Details" do
      f.input :company_title, :label => "Company Title"
      f.input :company_description, :label => "About the Company"
      f.input :company_industry, :label => "Industry"
      f.input :company_url, :label => "Reference Article"
    end
    f.inputs "Job Details" do
      f.input :job_title, :label => "Job Title"
      f.input :job_description, :label => "About the Job"
      f.input :firstday, :label => "First Day"
      f.input :lastday, :label => "Last Day"
      f.inputs do
        f.has_many :resume_accomplishments, :allow_destroy => true, :heading => "Accomplishments" do |cf|
          cf.input :description
        end
      end
    end
    f.inputs "Personal Note" do
      f.input :personal_note
    end

    f.actions
  end


  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
