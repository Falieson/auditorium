ActiveAdmin.register Resume do
  permit_params  :company_title, :company_description, :company_industry, :job_title, :job_description, :firstday, :lastday, :personal_note,
   resume_accomplishments_attributes: [:resume_id, :description, :_destroy]

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs
    f.buttons
  end

  form do |f|
    f.inputs "Company Details" do
      f.inputs :company_title
      f.inputs :company_description
      f.inputs :company_industry
    end
    f.inputs "Job Details" do
      f.inputs :job_title
      f.inputs :job_description
      f.inputs :firstday
      f.inputs :lastday
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
