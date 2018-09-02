class Pool

  def initialize(game, m, worker_ids)
    @game = game
    @name = name
    @worker_ids = worker_ids
  end

  def id
    "#{game.id}-#{m}"
  end

  def workers
    worker_ids.map{|worker_id| Worker.find(worker_id)}
  end
end
