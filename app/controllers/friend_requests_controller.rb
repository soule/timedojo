class FriendRequestsController < ApplicationController
	before_action :set_friend_request, except: [:index, :create]

	def create
		@friendship = current_user.friend_requests.build(:friend_id => params[:user_id])
		if @friendship.save
			flash[:notice] = "Submitted friend request!"
			redirect_to root_url
		else
			flash[:error] = "Couldn't add friend!"
			redirect_to root_url
		end
	end

	def update
		@friend_request.accept
	end

	private

	def set_friend_request
		@friend_request = FriendRequest.find(params[:id])
	end
end
