class AddGoalToWorkSessions < ActiveRecord::Migration[5.0]
  def change
  	add_column :work_sessions, :goal, :integer
  end
end
