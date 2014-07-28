class Resume < ActiveRecord::Base

	has_many :resume_accomplishments, :dependent => :destroy
	accepts_nested_attributes_for :resume_accomplishments,
	 :reject_if => lambda{ |a| a[:description.blank?] },
	 :allow_destroy => true
end	