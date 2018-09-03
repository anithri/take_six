class Types::Player < Types::BaseObject
  field :id, ID, null: true
  field :name, String, null: true
  field :board, Types::Board, null: true
  field :workers, [Types::Worker], null: true
end
