require 'rails_helper'

RSpec.describe InitGame, type: :interactor do
  describe '.call' do
    it 'should add a game to context' do
      result = InitGame.call
      warn result.keys.inspect
      expect(result.game).to be_a Game
    end
  end
end
