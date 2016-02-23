class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
    	t.string :name
    	t.string :freq
    	t.references :user, index: true
    	t.timestamps null: false
    end
  end
end
