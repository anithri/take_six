# frozen_string_literal: true

class WorkerSpace < ActiveHash::Base
  include GameParameters

  field :name
  field :max_workers, default: MAX_WORKERS
  field :start_workers, default: 0
  field :group, default: 'Tracker'

  create id: 'bar', name: 'bar', start_workers: 2
  create id: 'dead', name: 'dead'
  create id: 'discard', name: 'discard'
  create id: 'draw', name: 'draw', start_workers: 5
  create id: 'reserve', name: 'reserve', start_workers: 20

  GRID.each_pair do |id, name|
    create id: id, name: name, max_workers: MAX_REQUIREMENTS, group: 'Grid'
  end

  class << self
    def all_ids
      self.all.map(&:id)
    end

    def by_group(group)
      self.where(group: group)
    end
    def ids_by_group(group)
      by_group(group).map(&:id)
    end

    def tracker
      by_group('Tracker')
    end
    def tracker_ids
      tracker.map(&:id)
    end

    def grid
      by_group('Grid')
    end
    def grid_ids
      grid.map(&:id)
    end



    def grids
      self.find(grids)
    end

    def tracker

    end

  end
end
