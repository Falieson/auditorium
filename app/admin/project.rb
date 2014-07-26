ActiveAdmin.register Project do

  permit_params  :title, :headline, :description, :git_url, :demo_url, :version, :lastpublished, :firstpublished, project_features_attributes: [:project_id, :description, :_destroy], project_mentions_attributes: [:project_id, :title, :url, :published, :_destroy]

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs
    f.buttons
  end

  form do |f|
    f.inputs "Project Details" do
      f.input :title
      f.input :headline      
      f.input :description
      f.input :git_url, :default => "http://github.com/"
      f.input :demo_url
      f.input :version
      f.input :firstpublished
      f.input :lastpublished      
      f.inputs do
        f.has_many :project_features, :allow_destroy => true, :heading => 'Features' do |cf|
          cf.input :description
        end
      end
      f.inputs do
        f.has_many :project_mentions, :allow_destroy => true, :heading => 'Mentions' do |cf|
          cf.input :title 
          cf.input :url
          cf.input :published
        end
      end

    end


    f.actions
  end

end