# frozen_string_literal: true

class Board < ActiveHash::Base
  include GameParameters

  DECK_GROUPS = {
    "All": :itself,
    "Grid": :is_grid?,
    "Player": :is_player?,
    "Draw": :is_draw?,
    "Discard": :is_discard?
  }

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
    create id: id, name: name, start_cards: 1, max_cards: 1, max_workers: MAX_REQUIREMENTS
  end

  PLAYERS.each_pair do |id, name|
    create id: id, name: name, max_workers: 0
  end

  def is_deck?
    max_cards > 0
  end

  def is_pool?
    max_workers > 0
  end

  def is_player?
    PLAYERS[id]
  end

  def is_grid?
    GRID[id]
  end

  def is_draw?
    id == 'draw'
  end

  def is_discard?
    id == 'discard'
  end

  def is_dead?
    id == 'dead'
  end

  class << self
    def all_ids
      self.all.map(&:id)
    end

    def grid_ids
      GRID.keys
    end

    def deck_group(group)
      self.all.select{|b| b.is_deck? && b.call(DECK_GROUPS[group])}
    end

    def grids
      deck_group('Grid')
    end

    def decks
      self.all.select(&:is_deck?)
    end

    def pools
      self.all.select(&:is_pool?)
    end
  end
end
