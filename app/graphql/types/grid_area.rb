# frozen_string_literal: true

class Types::GridArea < Types::BaseObject
  description 'GridArea'

  field :id, ID, null: false
  field :game, Types::Game, null: false
  field :board, Types::Board, null: false
  field :card, Types::Card, null: false
  field :pool, Types::Pool, null: false
  # field :name, String, null: true
  # description 'name of category'
end
