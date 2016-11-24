class FriendshipsController < ApplicationController
	def create
		@friendship = current_user.friendships.build(:friend_id => params[:user_id])
		if @friendship.save
			flash[:notice] = "Submitted friend request!"
			redirect_to root_url
		else
			flash[:error] = "Couldn't add friend!"
			redirect_to root_url
		end
	end

	def destroy
		@friendship = current_user.friendships.find(params[:id])
		@friendship.destroy
		flash[:notice] = "Removed friendship"
		redirect_to root_url
	end
end
