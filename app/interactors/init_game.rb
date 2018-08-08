# frozen_string_literal: true

class InitGame
  include Interactor

  def call
    context.game = Game.new
  end
end
