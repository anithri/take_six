# frozen_string_literal: true
# == Schema Information
#
# Table name: users
#
#  id         :uuid             not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Player.random" do
    it 'should return players in a random order' do
      expect(User.random.to_a).to_not eq User.random.to_a
    end
  end

  describe "Player.for_game(count)" do
    it 'should return <count> Players' do
      players = User.for_game(Chair.count)
      expect(players).to have_attributes length: Chair.count
      expect(players).to all be_an_instance_of User
    end
  end
end
