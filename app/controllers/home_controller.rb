class HomeController < ApplicationController
  	before_action :set_profile

	def index
		@latest_blog = Blog.order('published DESC').first
	end

	def set_profile
		@latest_profile = Profile.order('updated_at DESC').first
	end	
end