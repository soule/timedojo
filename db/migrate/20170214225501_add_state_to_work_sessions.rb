class AddStateToWorkSessions < ActiveRecord::Migration[5.0]
  def change
  	add_column :work_sessions, :state, :integer
  end
end