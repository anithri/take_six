class GameCreation::Finalize
  include Interactor

  def call
    if game.valid?
      game.save
    else
      context.error = game.errors
      context.fail!
    end
  end

  def game
    context.game ||= Game.new(
      name:    Faker::TakeSix.game,
      players: context.players,
      decks:   context.decks,
      pools:   context.pools
    )
  end
end
