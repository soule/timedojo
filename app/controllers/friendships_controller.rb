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

	def confirm
		@friendship = current_user.inverse_friendships.find(params[:id])
		@friendship.confirmed = true
		@friendship.save
		reciprocal_friendship = Friendship.find_or_create_by(user_id: current_user.id, friend_id: params[:id])
		reciprocal_friendship.confirmed = true
	end

end
