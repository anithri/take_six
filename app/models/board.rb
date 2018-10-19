class Board < ActiveHash::Base
  MAX_CARDS        = Card.count
  MAX_WORKERS      = Worker::TOTAL_WORKERS
  MAX_REQUIREMENTS = Card.max_requirements

  PLAYERS = {
    player1: "Player 1",
    player2: "Player 2",
    player3: "Player 3",
    player4: "Player 4"
  }.with_indifferent_access

  PROJECT_COUNT = 16
  GRID          = (1..PROJECT_COUNT).reduce({}.with_indifferent_access) do |grid, i|
    grid[:"grid#{i}"] = "Grid #{i}"
    grid
  end

  NAMES_FOR_NUMBERS = %w{Zed One Two Three Four}

  field :name
  field :max_workers, default: MAX_WORKERS
  field :start_workers, default: 0
  field :max_cards, default: MAX_CARDS
  field :start_cards, default: 0

  create id: 'bar', name: 'bar', start_workers: 2
  create id: 'dead', name: 'dead', max_cards: 0
  create id: 'discard', name: 'discard'
  create id: 'draw', name: 'draw', start_cards: 44, start_workers: 5
  create id: 'reserve', name: 'reserve', start_workers: 20, max_cards: 0

  GRID.each_pair do |id, name|
    create id:          id,
           name:        name,
           start_cards: 1,
           max_cards:   1,
           max_workers: MAX_REQUIREMENTS

  end

  PLAYERS.each_pair do |id, name|
    create id:   id,
           name: name,
           max_workers: 0
  end

  def is_deck?
    max_cards > 0
  end

  def is_pool?
    max_workers > 0
  end

  class << self
    def all_ids
      self.all.map(&:id)
    end

    def decks
      self.all.select(&:is_deck?)
    end

    def pools
      self.all.select(&:is_pool?)
    end
  end
end
