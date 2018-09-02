class Pools

  attr_reader :game

  def initialize(game)
    @game = game
  end

  def data
    @game.pools_json
  end

  def deal
    game.pools_json = self.class.default_data
  end

  def save
    game.save
  end

  def complete?
    data.values.reduce(0){|s,a| s + a.length} == Worker::TOTAL_WORKERS.count
  end

  def pool_for(m)
    @pool_cache[m] ||= Pool.new(game, m, data[m.to_s])
  end

  def method_missing(m,*args,&block)
    if data.has_key?(m.to_s)
      return data[m.to_s]
    end
    raise ArgumentError.new("Method `#{m}.inspect` doesn't exist.")
  end

  class << self
    def default_data
      Board.all.reduce({}) do |hsh,board|
        hsh[board.id] = Worker.pool(board.per_worker_count)
        hsh
      end
    end
  end

end
