module Api
	module V1
		class UsersController < BaseController
			def index
			#usuarios = Users.all
			#render json: {text: "hola"}
		
			 users = User.all
			 render json: users
			end
		end
	end
end