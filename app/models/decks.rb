class Decks

  attr_accessor :game,:data

  def initialize(game)
    @game = game
    if @game.decks_json.empty?
      @game.decks_json = self.class.default_data
    end
    @data = @game.decks_json
  end

  def save
    game.save
  end

  def save!
    game.decks_json = data
    game.save
  end

  def complete?
    data.values.reduce(0){|s,a| s + a.length} == Card.count
  end

  class << self
    def default_data
      cards = Card.shuffle
      Location.all.reduce({}) do |hsh,location|
        hsh[location.id] = cards.pop(location.card_count).map(&:id)
        hsh
      end
    end
  end

end
