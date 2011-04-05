class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.text :content
      t.date :due_date
      t.time :due_time
      t.boolean :done, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
