class Pools

  attr_accessor :game,:data

  def initialize(game)
    @game = game
    if @game.pools_json.empty?
      @game.pools_json = self.class.default_data
    end
    @data = @game.pools_json
  end

  def save
    game.save
  end

  def save!
    game.pools_json = data
    game.save
  end

  def complete?
    data.values.reduce(0){|s,a| s + a.length} == Worker::TOTAL_WORKERS.count
  end

  class << self
    def default_data
      Location.all.reduce({}) do |hsh,location|
        hsh[location.id] = Worker.pool(location.per_worker_count)
        hsh
      end
    end
  end

end
