class UsersController < ApplicationController
  before_action :authenticate_user!
  
	def new
		@user = User.new
	end
  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:success] = "Welcome to TimeDojo!"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  def index
    @users = User.paginate(page: params[:page], per_page: 5)

    @friends = current_user.friends.paginate(page: params[:page], per_page: 5)

    #@received_friend_requests = Friendship.where({ friend_id: current_user.id, accepted: false}).paginate(page: params[:page], per_page: 5)
    @sent_friend_requests = current_user.pending_friends.paginate(page: params[:page], per_page: 5)
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
