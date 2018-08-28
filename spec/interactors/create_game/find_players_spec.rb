require 'rails_helper'

TEST_COUNT = Chair.count

RSpec.describe CreateGame::FindPlayers, type: :interactor, skip: true do
  describe '.call' do
    it 'should fetch 4 players' do
      result = CreateGame::FindPlayers.call

      expect(result.players).to have_attributes length: TEST_COUNT
      expect(result.players).to all be_an_instance_of Player
    end
  end
end
