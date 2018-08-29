class CreateGame
  include Interactor

  def call
    game.deal
    if game.valid?
      game.save
    else
      context.error = game.errors
      context.fail!
    end
  end

  def game
    context.game ||= Game.new(players: players)
  end

  def chairs
    context.chairs ||= Location::PLAYERS.keys
  end

  def goals
    context.goals ||= Worker.all_ids.shuffle.map {|wid| Worker.all_ids - [wid]}
  end

  def users
    context.users ||= User.active.for_game(chairs.count)
  end

  def players
    context.players ||= users.each_with_index.map do |u, idx|
      Player.new(
        goals:       goals[idx],
        location_id: chairs[idx],
        user:        users[idx]
      )
    end
  end
end
