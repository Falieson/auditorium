ActiveAdmin.register Blog do
  permit_params :title, :content, :published, :project_id,
   project_attributes: [:id, :project_id, :title, :_destroy]

  form do |f|
    f.inputs "Blog Post" do
      f.inputs :title
      f.inputs :content
      f.inputs :published
    end
    # f.has_many :projects do |p|
    #   p.input :title
    # end
    f.inputs do
      f.input :project_id, :as => :select, :collection => Project.all.map {|u| [u.title]}, :include_blank => "None"
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
