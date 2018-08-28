require 'rails_helper'

RSpec.describe CreateGame::Handler, type: :interactor, skip: true do
  it 'should be an organizer' do
    expect(CreateGame::Handler.included_modules).to include Interactor::Organizer
  end
end
