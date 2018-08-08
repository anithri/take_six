# == Schema Information
#
# Table name: games
#
#  id         :uuid             not null, primary key
#  phase      :integer          default(0)
#  turn       :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

HAS_MANY_THROUGH = [  :players, :card_hands, :worker_areas]
RSpec.describe Game, type: :model do
  describe 'Associations' do

    describe 'has_many' do
      it 'boards' do
        t = Game.reflect_on_association(:boards)
        expect(t.macro).to eq(:has_many)
      end
    end

    describe 'has_many :through' do

      it 'players' do
        t = Game.reflect_on_association(:boards)
        expect(t.macro).to eq(:has_many)

      end

    end

  end
end

