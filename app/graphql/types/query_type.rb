class Types::QueryType < Types::BaseObject

  #region Card Model
  field :card, Types::Card, null: true do
    argument :id, ID, required: true
  end
  def card(id:)
    Card.find(id)
  end

  field :cards, [Types::Card], null: false
  def cards
    Card.all
  end
  #endregion

  #region Worker Model
  field :worker, Types::Worker, null: true do
    argument :id, ID, required: true
  end
  def worker(id:)
    Worker.find(id)
  end

  field :workers, [Types::Worker], null: false
  def workers
    Worker.all
  end
  #endregion

  #region Player Model
  field :player, Types::Player, null: true do
    argument :id, ID, required: true
  end
  def player(id:)
    Player.find(id)
  end

  field :players, [Types::Player], null: true do
    argument :game_id, ID, required: true
  end
  def players(game_id:)
    Player.find_by_game_id(game_id)
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

end
