class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	before_action do
	  ActiveStorage::Current.host = 'localhost:3000/'
	end
end
