# frozen_string_literal: true

class Types::Deck < Types::BaseObject
  field :id, ID, null: false
  field :game, Types::Game, null: false
  field :board, Types::Board, null: false
  field :cards, [Types::Card], null: false
end
