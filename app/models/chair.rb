class Chair < ActiveHash::Base
  field :name

  def theme
    self.id
  end

  create id: 'playerOne', name: 'Player One'
  create id: 'playerTwo', name: 'Player Two'
  create id: 'playerThree', name: 'Player Three'
  create id: 'playerFour', name: 'Player Four'
end

