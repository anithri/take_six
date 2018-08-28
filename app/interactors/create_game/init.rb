module CreateGame
  class Init
    include Interactor

    def call
      context.game = Game.new(seats: context.seats)
    end
  end
end
