# frozen_string_literal: true

class Types::QueryType < Types::BaseObject
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :worker, Types::WorkerType, null: true do
    argument :id, ID, required: true
  end

  field :workers, [Types::WorkerType], null: false

  field :card, Types::CardType, null: true do
    argument :id, ID, required: true
  end

  field :workers, [Types::WorkerType], null: false

  def worker(id:)
    Worker.find(id)
  end

  def workers
    Worker.all
  end

  def card(id:)
    Card.find(id)
  end

  def cards
    Card.all
  end
end
