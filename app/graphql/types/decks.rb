# frozen_string_literal: true

class Types::Decks < Types::BaseObject
  field :id, ID, null: false
  field :game, Types::Game, null: false
  ::Board.all_ids.each do |board_id|
    field board_id.to_sym, Types::Deck, null: false
  end
end
