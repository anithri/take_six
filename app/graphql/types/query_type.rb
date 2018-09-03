class Types::QueryType < Types::BaseObject
  #region Player Model
  field :player, Types::Player, null: true do
    argument :id, ID, required: true
  end

  def player(id:)
    ::Player.find(id)
  end

  field :players, [Types::Player], null: true do
    argument :game_id, ID, required: true
  end

  def players(game_id:)
    ::Player.where(game_id: game_id)
  end

  #endregion

  #region Game Model
  field :game, Types::Game, null: false do
    argument :id, ID, required: true
  end

  def game(id:)
    ::Game.find(id)
  end

  field :games, [Types::Game], null: true

  def games
    ::Game.current
  end

  #endregion

  #region Pool Model
  field :pool, Types::Pool, null: true do
    argument :id, ID, required: true
  end

  def pool(id:)
    ::Pool.find(id)
  end

  field :pools, Types::Pools, null: true do
    argument :game_id, ID, required: true
  end

  def pools(game_id:)
    game = ::Game.find game_id
    Board.pools.reduce({game: game}) do |hsh, board|
      hsh[board.id] = game.pool(board.id)
      hsh
    end
  end
  #endregion
end
