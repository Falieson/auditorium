ActiveAdmin.register Project do

  permit_params  :title, :description, :git_url, :demo_url, :version, :lastpublished, :firstpublished, project_features_attributes: [:project_id, :description, :_destroy]

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs
    f.buttons
  end

  form do |f|
    f.inputs "Project Details" do
      f.inputs :title
      f.inputs :description
      f.inputs :git_url
      f.inputs :demo_url
      f.inputs :version
      f.inputs do
        f.has_many :project_features, :allow_destroy => true, :heading => 'Features' do |cf|
          cf.input :description
        end
      end


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
