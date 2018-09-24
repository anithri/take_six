# frozen_string_literal: true

class CardSpace < ActiveHash::Base
  include GameParameters

  field :name
  field :max_cards, default: MAX_CARDS
  field :start_cards, default: 0
  field :group

  create id: 'discard',
         name: 'Discard',
         group: 'Discard'

  create id: 'draw',
         name: 'Draw',
         start_cards: 44,
         group: 'Draw'

  GRID.each_pair do |id, name|
    create id: id, name: name,
           start_cards: 1,
           max_cards: 1,
           group: 'Grid'
  end

  PLAYERS.each_pair do |id, name|
    create id: id,
           name: name,
           group: 'Player'
  end

  class << self
    def all_ids
      self.all.map(&:id)
    end

    def by_group(group)
      group == 'All' ? self.where(group: group) : self.all
    end
    def ids_by_group(group)
      by_group(group).map(&:id)
    end

    def grids
      self.by_group('Grid')
    end
    def grid_ids
      grids.map(&:id)
    end

    def players
      self.by_group("Player")
    end
    def player_ids
      players.map(&:id)
    end

    def discard
      self.by_group('Discard')
    end
    def discard_ids
      discard_ids
    end

    def draw
      self.by_group('Draw')
    end
    def draw_ids
      draw_ids
    end
  end
end
