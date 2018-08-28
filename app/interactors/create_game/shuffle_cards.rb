module CreateGame
  class ShuffleCards
    include Interactor

    def call
      decks = {
        dead:           [],
        discard:        [],
        starting_count: Card.shuffle,
      }.with_indifferent_access

      Location.all.each do |location|
        decks[location.id] = Array(decks[:starting_count].pop)
      end

      Chair.all.each do |chair|
        decks[chair.id] = []
      end

      context.decks = decks
    end
  end
end
