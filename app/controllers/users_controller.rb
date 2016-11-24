class UsersController < ApplicationController
	def new
		@user = User.new
	end
  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:success] = "Welcome to WorkTracker!"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  def index
    @users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def request_friend
    if user_signed_in?
      current_user.friend_request(User.find(params[:id]))
      redirect_to users_path
    end
  end


  private
  	def user_params
  		params.require(:user).permit(:name, :email, 
  				:password, :password_confirmation)
  	end
end
