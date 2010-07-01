class AddStatusRequirements < ActiveRecord::Migration
  def self.up
    create_table :requirement_statuses do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    add_column :requirements, :status_id, :integer
    remove_column :requirements, :status

    add_index :requirements, [:status_id], :name => 'requirement_status_index'
  end

  def self.down
    remove_column :requirements, :status_id
    add_column :requirements, :status, :string

    drop_table :requirement_statuses

    remove_index :requirements, :name => :requirement_status_index rescue ActiveRecord::StatementInvalid
  end
end
