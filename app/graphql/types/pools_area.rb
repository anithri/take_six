# frozen_string_literal: true

class Types::PoolsArea < Types::BaseObject
  field :bar, Types::Pool, null: true
  field :dead, Types::Pool, null: true
  field :discard, Types::Pool, null: true
  field :draw, Types::Pool, null: true
  field :reserve, Types::Pool, null: true

end
