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

RSpec.describe Player, type: :model do
  describe "Player.random" do
    it 'should return players in a random order' do
      expect(Player.random.to_a).to_not eq Player.random.to_a
    end

  end
end
