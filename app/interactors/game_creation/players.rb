class GameCreation::Players
  include Interactor

  def call
    context.players = context.chairs.each_with_index.map do |chair_id, idx|
      Player.new(
        name:     Faker::TakeSix.player,
        goals:    context.goals[idx],
        board_id: chair_id,
        user:     users[idx],
      )
    end
  end

  def users
    context.users ||= User.active.for_game(context.chairs.count)
  end
end
