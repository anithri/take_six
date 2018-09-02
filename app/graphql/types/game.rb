class Types::Game < Types::BaseObject
  field :id, ID, null: false
  field :players, [Types::Player], null: false
  field :phase, Int, null: false
  field :turn, Int, null: false
  field :decks, Types::Decks, null: false
  field :deck, Types::Deck, null: true do
    argument :board_id, ID, required: true
  end
  def deck(board_id:)
    object.decks.send board_id
  end

  field :pools, Types::Pools, null: false
  field :pool, Types::Pool, null: true do
    argument :board_id, ID, required: true
  end
  def pool(board_id:)
    object.pools.send board_id
  end

end
