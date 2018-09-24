module Types
  class DecksInput < Types::BaseObject
    argument :game_id, ID, required: true
    argument :deck_ids, [ID], required: false
    argument :group, ::Types::DeckGroup, required: false
  end
end
