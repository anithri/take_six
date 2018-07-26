require 'rails_helper'

RSpec.describe Status, type: :model do
  before :each do
    @status = Status.first
  end
  describe 'Status.first' do
    it 'should have correct attributes' do
      expect(@status.id).to be_a Integer
      expect(@status.name).to be_a String
    end
  end
end
