class Mutations::CreateGame < Mutations::BaseMutation

  field :game, Types::Game, null: false

  def resolve()
    r = ::CreateGame.call
    if r.success?
      {
        game:   r.game,
        errors: []
      }
    else
      {
        game:   nil,
        errors: r.errors
      }
    end
  end
end
