class Task < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
    timestamps
  end

  belongs_to :requirement, :index => 'requirement_task_index'
  has_many :task_assignments, :dependent => :destroy
  has_many :users, :through => :task_assignments, :accessible => true

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    ((acting_user.signed_up? && acting_user.coordinator?) || acting_user.administrator?) && !requirement_changed?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
