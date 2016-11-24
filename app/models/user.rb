class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
	has_many :work_sessions, dependent: :destroy
	# before_save { self.email = email.downcase }
	# validates :name, presence: true, length: { maximum:50 }
	# EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	# validates :email, presence: true, length: { maximum:255 },
	#  				  format: { with: EMAIL_REGEX },
	#  				  uniqueness: { case_sensitive: false }

	
	# validates :password, presence: true, length: { minimum: 6 }

	has_friendship
end
