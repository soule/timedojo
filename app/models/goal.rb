class Goal < ApplicationRecord
	belongs_to :user
	has_many :goals
	enum interval: [:day, :week, :month]
end
