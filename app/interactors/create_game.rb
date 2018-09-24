class CreateGame
  include Interactor::Organizer
  organize GameCreation::Init, GameCreation::Players, GameCreation::Finalize
end
