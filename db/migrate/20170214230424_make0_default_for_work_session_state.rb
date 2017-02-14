class Make0DefaultForWorkSessionState < ActiveRecord::Migration[5.0]
  def change
  	change_column_default :work_sessions, :state, 0
  end
end
