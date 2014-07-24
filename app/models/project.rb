class Project < ActiveRecord::Base
	has_many :project_features, :dependent => :destroy
	accepts_nested_attributes_for :project_features,
	 :reject_if => lambda{ |a| a[:description.blank?] },
	 :allow_destroy => true

end
