class Deck

  attr_reader :game, :name, :card_ids

  def initialize(game, name, card_ids)
    @game     = game
    @name     = name
    @card_ids = card_ids
  end

  def id
    "#{game.id}-#{name}"
  end

  def cards
    card_ids.map {|card_id| Card.find(card_id)}
  end
end
