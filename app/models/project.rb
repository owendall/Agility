class Project < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
    timestamps
  end

  has_many :requirements, :dependent => :destroy

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator? || (acting_user.signed_up? && acting_user.coordinator?)
  end

  def update_permitted?
    acting_user.administrator? || (acting_user.signed_up? && acting_user.coordinator?)
  end

  def destroy_permitted?
    false
  end

  def view_permitted?(field)
    true
  end

end
