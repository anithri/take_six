# frozen_string_literal: true

class CreateGame
  include Interactor::Organizer

  organize  InitGame,
            FindPlayers,
            ShuffleCards,
            CreateBoards
  ReadyGame

  def call
    context.game = Game.new
  end
end
