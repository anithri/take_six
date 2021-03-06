# frozen_string_literal: true

class Types::Pool < Types::BaseObject
  field :id, ID, null: false
  field :name, String, null: true
  field :game, Types::Game, null: false
  field :board, Types::Board, null: false
  field :workers, [Types::Worker], null: false
end
