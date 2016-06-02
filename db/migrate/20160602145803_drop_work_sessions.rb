class DropWorkSessions < ActiveRecord::Migration
  def change
  	drop_table :work_sessions
  end
end
