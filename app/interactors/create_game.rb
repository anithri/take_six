class CreateGame
  include Interactor::Organizer
  include GameCreation
  organize GameCreation::Init, GameCreation::Players, GameCreation::Finalize
end
