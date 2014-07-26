ActiveAdmin.register Profile do

  remove_filter :about_present, :about_past, :about_future

  permit_params  :id, :name, :birthdate, :headline, :about_present, :about_past, :about_future,
   profile_accomplishments_attributes: [:profile_id, :description, :url, :published, :_destroy => true]
  
  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs
    f.buttons
  end

  form do |f|
    f.inputs "Basic Information" do 
      f.inputs :name, :default => "Florian Mettetal"
      f.inputs :headline
      f.inputs :birthdate, :default => "1986-12-12 00:00:00"
    end
    f.inputs "And about yourself?" do
      f.inputs :about_past, :label => "Past"
      f.inputs :about_present, :label => "Present"
      f.inputs :about_future, :label => "Future"
    end
    f.inputs "Accomplishments" do
      f.has_many :profile_accomplishments, :allow_destroy => true, :heading => 'Accomplishment' do |cf|
        cf.input :description
        cf.input :url
        cf.input :published
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
