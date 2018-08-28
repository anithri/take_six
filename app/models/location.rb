class Location < ActiveHash::Base
  PLAYER_COUNT      = 4
  PROJECT_COUNT     = 16
  NAMES_FOR_NUMBERS = %w{Zed One Two Three Four}

  field :name
  field :max_cards, default: Card.count
  field :card_count, default: 0
  field :per_worker_count, default: 0

  create id: :bar, name: 'bar', max_cards: 0, per_worker_count: 2
  create id: :dead, name: 'dead'
  create id: :discard, name: 'discard', per_worker_count: 3
  create id: :draw, name: 'draw', card_count: 44, per_worker_count: 5
  create id: :reserve, name: 'reserve', max_cards: 0, per_worker_count: 20

  PROJECT_COUNT.times do |i|
    create id:               :"grid#{i + 1}",
           name:             "Location #{i + 1}",
           card_count:       1,
           max_cards:        1,
           per_worker_count: 1
  end

  PLAYER_COUNT.times do |i|
    create id: :"player#{i + 1}",
           name: "Player #{NAMES_FOR_NUMBERS[i + 1]}"
  end

  class << self
    def all_ids
      self.all.map(&:id)
    end
  end
end
