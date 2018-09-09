# frozen_string_literal: true

class Types::Card < Types::BaseObject
  field :id, ID, null: true
  field :name, String, null: false
  field :workers, [Types::Worker], null: true
end
