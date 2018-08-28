module CreateGame
  class Handler
    include Interactor::Organizer

    organize FindPlayers, Init, ShuffleCards, AssignWorkers, ReadyGame
  end
end
