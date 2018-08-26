class Types::Card < Types::BaseObject
  global_id_field :id

  field :name, String, null: false
  field :workers, [::Types::Worker], null: true
end
