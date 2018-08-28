require 'rails_helper'

RSpec.describe CreateGame::Init, type: :interactor, skip: true do
  describe '.call' do
    it 'should add a game to the context' do
      result = CreateGame::Init.call seats: []
      expect(result.game).to be_an_instance_of Game
    end
  end
end
