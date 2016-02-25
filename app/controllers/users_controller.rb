class UsersController < ApplicationController
	before_action :require_login, except: [:index, :create]
	before_action :require_correct_user, only: [:show, :edit, :update, :destroy]
  
  def index

  end

  def show
  	@user = User.select('id, first_name').find(params[:id])
    @user_tasks = @user.tasks
  end

  def create
      # respond_to do |format|
        @new_user = User.new(first_name: params[:first_name], last_name: params[:last_name],email: params[:email],phone_number: params[:phone_number], password: params[:password])
          if @new_user.valid?	&& @new_user.authenticate(params[:password])
	  	      if @new_user.save
              UserMailer.registration_confirmation(@new_user).deliver
              @last_user = User.select('id, first_name').last
	  	        session[:current_id] = @last_user.id
            end
  		      redirect_to '/users/%d' % @last_user.id
          else
          flash[:mistakes] = @new_user.errors.full_messages
  		    redirect_to '/'
          end
      # end
  end
end
