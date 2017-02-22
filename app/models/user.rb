class User < ActiveRecord::Base


  has_many :friendships, dependent: :destroy
  has_many :received_friendships, :class_name => "Friendship", :foreign_key => "friend_id"

  has_many :active_friends, -> { where(friendships: { accepted: true }) }, :through => :friendships, source: :friend
  has_many :received_friends, -> {where(friendships: {accepted: true} ) }, :through => :received_friendships, source: :user
  has_many :pending_friends, -> { where(friendships: { accepted: false}) }, through: :friendships, source: :friend
  has_many :requested_friends, -> { where(friendships: { accepted: false}) }, through: :received_friendships, source: :user


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :work_sessions, dependent: :destroy
  has_many :goals, dependent: :destroy

# to call all your friends

    def friends
      active_friends | received_friends
    end

# to call your pending sent or received

    def pending
        pending_friends | requested_friendships
    end


end
