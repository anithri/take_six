require 'rails_helper'

RSpec.describe Seat, type: :model, focus: true do
  describe 'should have attributes' do
    before(:each) do
      @loc            = Location.first
      @loc_worker_zero = Location.where(per_worker_count: 0).first
      @loc_max_zero   = Location.where(max_cards: 0).first
      @loc_max_max = Location.where(max_cards: Card.count).first
    end

    it 'should have name' do
      expect(@loc.name).to eq 'bar'
    end

    it 'should have per_worker' do
      expect(@loc.per_worker_count).to eq 2
      expect(@loc_worker_zero.per_worker_count).to eq 0
    end

    it 'should have max_cards' do
      expect(@loc_max_zero.max_cards).to eq 0
      expect(@loc_max_max.max_cards).to eq Card.count
    end
  end
end
