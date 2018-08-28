module CreateGame
  class ReadyGame
    include Interactor

    def call
      context.game.decks = context.decks
      context.game.pools = context.pools

    end
  end
end
