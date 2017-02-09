class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
    	t.string :name
    	t.text :description
    	t.integer :target
    	t.integer :interval
      	t.timestamps
    end
  end
end
