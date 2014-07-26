class HomeController < ApplicationController
	def index
		@latest_blog = Blog.order('published DESC').first
		@latest_profile = Profile.order('updated_at DESC').first
	end
end
