class WorkSession < ActiveRecord::Base
  belongs_to :user, counter_cache: true
  belongs_to :goal, optional: true
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates_numericality_of :length, greater_than: 0

  enum state: [:started, :paused, :complete]

end
