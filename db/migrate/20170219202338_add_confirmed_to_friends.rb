class AddConfirmedToFriends < ActiveRecord::Migration[5.0]
  def change
    add_column :friendships, :confirmed, :boolean
  end
end
