class RemoveFriendshipsAndFriendRequests < ActiveRecord::Migration[5.0]
  def change
  	drop_table :friend_requests
  	drop_table :friendships
  end
end
