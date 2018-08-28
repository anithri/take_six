module CreateGame
  class AssignWorkers
    include Interactor


    def call
      pools = {
        bar:            create_pool(2),
        dead:           [],
        discard:        create_pool(3),
        starting_count: create_pool(5),
        reserve:        create_pool(20)
      }

      Location.all.each do |location|
        pools[location.id] = []
      end

      Chair.all.each do |chair|
        pools[chair.id] = []
      end

      context.pools = pools

    end

    def create_pool(count)
      Worker.all.map {|worker| Array.new(count, worker)}.reduce(&:+)
    end
  end
end
