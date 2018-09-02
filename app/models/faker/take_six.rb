module Faker
  class TakeSix < Base
    PLAYER_CHOICES = [
      'dog.name',
      'cat.name',
      'rock_band.name',
      'funny_name.name',
      'hobbit.character',
      'star_trek.character',
      'dr_who.character',
      'venture_bros.character',
      'stranger_things.character',
      'family_guy.character',
      'seinfeld.character',
      'hitchhikers_guide_to_the_galaxy.characters',
      'princess_bride.characters',
      'lord_of_the_rings.characters',
      'harry_potter.characters'
    ]

    GAME_NAME_CHOICES = [
      'fallout.locations',
      'hitchhikers_guide_to_the_galaxy.locations',
      'lovecraft.location',
      'star_wars.planets',
      'star_trek.location',
      'hobbit.location',
      'lord_of_the_rings.locations',
      'harry_potter.locations'
    ]
    class << self
      def player
        fetch(PLAYER_CHOICES.sample)
      end

      def game
        fetch(GAME_NAME_CHOICES.sample)
      end
    end
  end
end

