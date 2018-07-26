class Types::StatusType < Types::BaseObject
  field :id, ID, null: false
  field :name, String, null: false
  field :internal_projects, [Types::InternalProjectType], null: false
end
