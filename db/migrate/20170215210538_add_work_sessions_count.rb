class AddWorkSessionsCount < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :work_sessions_count, :integer, default: 0
  end
end
