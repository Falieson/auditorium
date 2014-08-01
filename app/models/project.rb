class Project < ActiveRecord::Base
	has_many :blogs

	has_many :project_features, :dependent => :destroy
	accepts_nested_attributes_for :project_features, :reject_if => lambda{ |a| a[:description.blank?] }, :allow_destroy => true

	has_many :project_mentions, :dependent => :destroy
	accepts_nested_attributes_for :project_mentions, :reject_if => lambda{ |a| a[:title.blank?] }, :allow_destroy => true

	has_many :project_images, :dependent => :destroy
	accepts_nested_attributes_for :project_images, :reject_if => lambda{ |a| a[:image.blank?] }, :allow_destroy => true
	
end