class FindPlayers
  include Interactor

  def call
    context.players = Player.active.to_a.sample(4)
  end
end
