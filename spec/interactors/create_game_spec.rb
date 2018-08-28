require 'rails_helper'

RSpec.describe CreateGame do
  describe '#call' do
    it 'should respond to #call' do
      expect(CreateGame).to respond_to :call
    end
    it 'should return a result' do
      expect(CreateGame.call).to be_an_instance_of Interactor::Context
    end
    it 'should have a game' do
      expect(CreateGame.call.game).to be_an_instance_of Game
    end
  end
end
