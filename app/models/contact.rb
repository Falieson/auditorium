class Contact < MailForm::Base
	attribute :name,      :validate => true
	attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :message
	attribute :nickname,  :captcha  => true

	def headers
		{
			:subject => "Contact Request",
			:from => %("#{name}" <#{email}>),
			:to => Rails.application.secrets.my_email
		}
	end
end