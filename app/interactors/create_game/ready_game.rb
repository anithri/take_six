module CreateGame
  class ReadyGame
    include Interactor

    def call
      context.game.decks = context.decks
      context.game.pools = context.pools

      if ! context.game.valid?
        context.error = context.name.errors.join(", ")
        context.fail!
      end

    end
  end
end
