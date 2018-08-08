class Types::CardType < Types::BaseObject
  field :id, ID, null: false
  field :name, String, null: false
  field :workers, [Types::WorkerType], null: true
end
