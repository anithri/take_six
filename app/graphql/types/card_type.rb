# frozen_string_literal: true

class Types::CardType < Types::BaseObject
  description 'Card'

  field :name, String, null: true
  description 'name of category'

  field :workers, [WorkerType], null: false
  description 'worker requirements'
end
