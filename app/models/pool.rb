class Pool

  attr_reader :pools, :board

  def initialize(pools, board, worker_ids)
    @pools      = pools
    @board      = board
    @worker_ids = worker_ids
  end

  def game
    @pools.game
  end

  def name
    board.name
  end

  def id
    "#{game.id}-#{m}"
  end

  def workers
    @workers ||= @worker_ids.map do |worker_id|
      if worker_id.kind_of? Worker
        worker_id
      else
        Worker.find(worker_id)
      end
    end
  end
end
