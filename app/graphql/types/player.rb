class Types::Player < Types::BaseObject
  field :id, ID, null: true
  field :name, String, null: true
  field :seat, Types::Location, null: true
end
