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
    context.game ||= Game.new(
      name:    Faker::TakeSix.game,
      players: players
    )
  end

  def chairs
    context.chairs ||= Board::PLAYERS.keys
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
        name:     Faker::TakeSix.player,
        goals:    goals[idx],
        board_id: chairs[idx],
        user:     users[idx]
      )
    end
  end
end
