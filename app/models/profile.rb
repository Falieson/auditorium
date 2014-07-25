class Profile < ActiveRecord::Base
	has_many :profile_accomplishments, :dependent => :destroy
	accepts_nested_attributes_for :profile_accomplishments,
	 :reject_if => lambda{ |a| a[:description.blank?] },
	 :allow_destroy => true	
end
