class Pools

  attr_reader :game,:data

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

  def method_missing(m,*args,&block)
    if data.has_key?(m.to_s)
      return data[m.to_s]
    end
    raise ArgumentError.new("Method `#{m}.inspect` doesn't exist.")
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
