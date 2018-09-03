# frozen_string_literal: true

class Types::Pools < Types::BaseObject
  Board.pools.each do |board|
    field board.id, Types::Pool, null: true
  end
end
