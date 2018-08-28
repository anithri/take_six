require 'rails_helper'

RSpec.describe CreateGame::ShuffleCards, type: :interactor, skip: true do
  describe '.call' do
    before :each do
      @decks = CreateGame::ShuffleCards.call.decks
    end
    it 'should create a hash of decks' do
      expect(@decks[:starting_count].length).to eq 44
      expect(@decks[:discard]).to be_empty
      expect(@decks['location2'].length).to eq 1
      expect(@decks['location12'].length).to eq 1
      expect(@decks['playerTwo']).to be_empty
    end

    it 'should account for all of the card' do
      expect(@decks.values.map(&:length).sum).to eq Card.count
    end
  end
end
