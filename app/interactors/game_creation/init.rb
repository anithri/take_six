class GameCreation::Init
  include Interactor

  def call
    context.chairs ||= Board::PLAYERS.keys
    context.goals  ||= Worker.all_goals.map{|a| a.map(&:id)}
    context.decks  ||= deal_cards
    context.pools  ||= deal_workers
  end

  def deal_cards
    cards = Card.shuffle.map(&:id)
    Board.decks.map do |board|
      Deck.new(board: board, card_data: cards.pop(board.start_cards))
    end
  end

  def deal_workers
    Board.pools.map do |board|
      Pool.new(board: board, worker_data: Worker.pool(board.start_workers))
    end
  end

end
