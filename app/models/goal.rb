class Goal < ApplicationRecord
	belongs_to :user
	enum interval: [:day, :week, :month]
end
