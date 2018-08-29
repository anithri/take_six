class Location < ActiveHash::Base
  PLAYERS = {
    player1: "Player 1",
    player2: "Player 2",
    player3: "Player 3",
    player4: "Player 4"
  }.with_indifferent_access

  PROJECT_COUNT = 16
  GRID          = (1..PROJECT_COUNT).reduce({}.with_indifferent_access) do |grid, i|
    grid[:"grid#{i + 1}"] = "Grid #{i + 1}"
    grid
  end

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

  GRID.each_pair do |id, name|
    create id:               id,
           name:             name,
           card_count:       1,
           max_cards:        1,
           per_worker_count: 1
  end

  PLAYERS.each_pair do |id, name|
    create id:   id,
           name: name
  end

  class << self
    def all_ids
      self.all.map(&:id)
    end
  end
end
