require 'rails_helper'

RSpec.describe CreateGame::AssignWorkers, type: :interactor, skip: true do
  describe '.call' do
    before :each do
      @pools = CreateGame::AssignWorkers.call.pools
    end
    it 'should create a hash of pools' do
      expect(@pools[:bar].length).to eq 8
      expect(@pools[:dead].length).to eq 0
      expect(@pools[:discard].length).to eq 12
      expect(@pools[:starting_count].length).to eq 20
      expect(@pools[:reserve].length).to eq 80
      expect(@pools['location1'].length).to eq 0
      expect(@pools['location13'].length).to eq 0
      expect(@pools['playerOne'].length).to eq 0
      expect(@pools['playerThree'].length).to eq 0
    end

    it 'should account for all of the workers' do
      expect(@pools.values.map(&:length).sum).to eq Worker::TOTAL_WORKERS
    end
  end
end
