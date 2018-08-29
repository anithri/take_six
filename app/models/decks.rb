class Decks

  attr_reader :game

  def initialize(game)
    @game = game
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

  def method_missing(m,*args,&block)
    if data.has_key?(m.to_s)
      return data[m.to_s]
    end
    raise ArgumentError.new("Method `#{m}.inspect` doesn't exist.")
  end

  class << self
    def default_data
      cards = Card.shuffle
      Location.all.reduce({}.with_indifferent_access) do |hsh,location|
        hsh[location.id] = cards.pop(location.card_count).map(&:id)
        hsh
      end
    end
  end
end
