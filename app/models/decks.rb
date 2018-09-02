class Decks

  attr_reader :game

  def initialize(game)
    @game = game
    @deck_cache = {}
  end

  def data
    game.decks_json
  end

  def deal
    game.decks_json = self.class.default_data
  end

  def save
    game.save
  end

  def complete?
    data.values.reduce(0){|s,a| s + a.length} == Card.count
  end

  def deck_for(m)
    @deck_cache[m] ||= Deck.new(game, m, data[m.to_s])
  end

  def method_missing(m,*args,&block)
    if data.has_key?(m.to_s)
      return deck_for(m.to_s)
    end
    raise ArgumentError.new("Method `#{m}.inspect` doesn't exist.")
  end

  class << self
    def default_data
      cards = Card.shuffle
      Board.all.reduce({}.with_indifferent_access) do |hsh,board|
        hsh[board.id] = cards.pop(board.card_count).map(&:id)
        hsh
      end
    end
  end
end
