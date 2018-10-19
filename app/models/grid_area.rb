class GridArea

  attr_reader :id, :game, :board, :pool, :deck, :card
  def initialize(game, grid_area_id)
    @id = game.id + grid_area_id
    @game = game
    @board = Board.find(grid_area_id)
    @pool = game.pools.for_board(grid_area_id)
    @deck = game.decks.for_board(grid_area_id)
    @card = @deck.cards.first
  end
end
