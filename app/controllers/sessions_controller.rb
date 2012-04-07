class SessionsController < ApplicationController
	def callback
		auth = request.env["omniauth.auth"]
		user = User.where(:provider => auth["provider"], :uid => auth["uid"]).first || User.create_with_omniauth(auth)
		sesion[:user_id] = user.id
		redirest_to :root, :notice => "login"
	end
	def destroy
		session[:user_id] = nil
		redirest_to :root, :notice => "logout"
	end
end
