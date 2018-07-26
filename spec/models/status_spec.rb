require 'rails_helper'

RSpec.describe Status, type: :model do

  before :each do
    @status = Status.new(name: 'My Status', id: 42)
  end

  describe 'Status.new(...)' do
    it 'should have correct attributes' do
      expect(@status.id).to be_a Integer
      expect(@status.name).to be_a String
      expect(@status.internal_projects).to be_a ActiveRecord::Relation
    end
  end

  describe '#find_from(term)' do
    before :all do
      @first = Status.first
    end
    it 'should find by id' do
      status = Status.find_from(100)
      expect(status).to eq @first
    end
    it 'should find by string id' do
      status = Status.find_from('100')
      expect(status).to eq @first
    end
    it 'should find by name' do
      status = Status.find_from(@first.name)
      expect(status).to eq @first
    end
  end
end
