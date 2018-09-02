# frozen_string_literal: true

class Types::Pools < Types::BaseObject
  field :game, Types::Game, null: false
  field :pools, [Types::Pool], null: false
end
