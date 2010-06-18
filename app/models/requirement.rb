class Requirement < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    title  :string
    body   :text
    status enum_string(:proposed, :accepted, :rejected, :reviewing, :developing, :completed)
    timestamps
  end

  belongs_to :project, :index => 'requirement_project_index'
  has_many :tasks, :dependent => :destroy

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    ((acting_user.signed_up? && acting_user.coordinator?) || acting_user.administrator?) && !project_changed?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
