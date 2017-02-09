class FriendRequest < ApplicationRecord
	belongs_to :users
	belongs_to :friend, class_name: 'User'

	def accept
		user.friends << friend
		destroy
	end
end