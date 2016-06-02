class CreateWorkSessions < ActiveRecord::Migration
  def change
    create_table :work_sessions do |t|
      t.float :length
      t.text :description
      t.time :timeStarted
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :work_sessions, [:user_id, :created_at]
  end
end
