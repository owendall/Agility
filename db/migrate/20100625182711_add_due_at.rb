class AddDueAt < ActiveRecord::Migration
  def self.up
    add_column :tasks, :due_at, :datetime
  end

  def self.down
    remove_column :tasks, :due_at
  end
end
