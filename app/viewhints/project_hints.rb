class ProjectHints < Hobo::ViewHints

  # model_name "My Model"
  # field_names :field1 => "First Field", :field2 => "Second Field"
  # field_help :field1 => "Enter what you want in this field"
  # children :primary_collection1, :aside_collection1, :aside_collection2
  field_names :name => 'Project Name'
  field_help :name => 'Enter a name for the project. Make it short but descriptive.'
  children :requirements

end
