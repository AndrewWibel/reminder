class CreateProgresses < ActiveRecord::Migration
  def change
    create_table :progresses do |t|
      t.integer :frequency
      t.string :task

      t.timestamps null: false
    end
  end
end
