class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
  before_action :set_profile

  def set_profile
    @latest_profile = Profile.order('updated_at DESC').first
    @latest_resume = Resume.order('updated_at DESC').first    
  end





end