require 'rails_helper'

RSpec.describe Category, type: :model do
  before :each do
    @category = Category.first
  end
  describe 'instance of Category' do
    it 'should have correct attributes' do
      expect(@category.id).to be_an Integer
      expect(@category.name).to be_a String
      expect(@category.abbr).to be_a String
      expect(@category.alternatives).to be_an Array
    end

    it 'should return a display_name' do
      expect(@category.display_name).to eq(@category.abbr + @category.id.to_s)
    end
  end

  describe '#find_by_alternative(term)' do
    it 'should return if alternatives include term' do
      expect(Category.find_by_alternative('GO')).to eq(@category)
      expect(Category.find_by_alternative('GA')).to eq(@category)
    end
  end

  describe '#find_from' do

    it 'should return by numeric id' do
      expect(Category.find_from(100)).to eq(@category)
    end
    it 'should return by string id' do
      expect(Category.find_from('100')).to eq(@category)
    end
    it 'should return by name' do
      expect(Category.find_from(@category.name)).to eq(@category)
    end
    it 'should return by abbr' do
      expect(Category.find_from(@category.abbr)).to eq(@category)
    end
    it 'should returns nil otherwise' do
      expect(Category.find_from('nonsense')).to be_nil
    end
  end
end
