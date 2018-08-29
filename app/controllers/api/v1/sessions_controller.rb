class Api::V1::SessionsController < Devise::SessionsController
	skip_before_action :verify_authenticity_token
 
	def create
		user = User.find_for_database_authentication(email: params[:user][:email])
		if user && user.valid_password?(params[:user][:password])
			
			render json: {a:'auth_token'}
		else
			render json: {b:'auth_token'}
		end
 	end
 end