module CreateGame
  class ShuffleCards
    include Interactor

    def call
      decks = {
        draw: Card.shuffle,
        discard: [],
      }.with_indifferent_access
      Location.all.each do |location|
        decks[location.id] = Array(decks[:draw].pop)
      end
      Chair.all.each do |chair|
        decks[chair.id] = []
      end

      context.decks = decks
    end
  end
end
