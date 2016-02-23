class SessionsController < ApplicationController
	def create
  		@user = User.find_by(email: params[:email])

  		if @user && @user.authenticate(params[:password])
      		session[:current_id] = @user.id
  			redirect_to '/users/%d' % @user.id
  		else
  			flash[:errors] = 'Invalid Login'
  			redirect_to "/" 
  		end
  	end
  	
  	def destroy
    	logout_user
    	redirect_to '/'
    end
end
