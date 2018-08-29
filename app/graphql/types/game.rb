class Types::Game < Types::BaseObject
  field :id, ID, null: false
  field :players, [Types::Player], null: false
  field :phase, Int, null: false
  field :turn, Int, null: false
end
