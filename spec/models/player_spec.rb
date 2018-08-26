# frozen_string_literal: true

# == Schema Information
#
# Table name: players
#
#  id         :uuid             not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'
TEST_COUNT = 4

RSpec.describe Player, type: :model do
  describe "Player.random" do
    it 'should return players in a random order' do
      expect(Player.random.to_a).to_not eq Player.random.to_a
    end
  end

  describe "Player.for_game(count)" do
    it 'should return <count> Players' do
      players = Player.for_game(TEST_COUNT)
      expect(players).to have_attributes length: TEST_COUNT
      expect(players).to all be_an_instance_of Player
    end
  end
end
