class UsersController < ApplicationController
	before_action :require_login, except: [:index, :create]
	before_action :require_correct_user, only: [:show, :edit, :update, :destroy]
  
  def index

  end

  def show
  	@user = User.select('id, first_name').find(params[:id])
    
  end

  def create
    if params[:password_confirmation] == params[:password]
      @new_user = User.create(first_name: params[:first_name], last_name: params[:last_name],email: params[:email], password: params[:password])
      if @new_user.valid?	&& @new_user.authenticate(params[:password])
	  	  @last_user = User.select('id, first_name').last
	  	  session[:current_id] = @last_user.id
  		  redirect_to '/users/%d' % @last_user.id
      else
        flash[:mistakes] = @new_user.errors.full_messages
  		  redirect_to '/'
      end
    else
      flash[:mistakes] = ["passwords do not match"]
      redirect_to '/'
    end
  end
end
