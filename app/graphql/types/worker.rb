class Types::Worker < Types::BaseObject
  field :id, ID, null: false
  field :name, String, null: false
  field :theme, String, null: false
end
