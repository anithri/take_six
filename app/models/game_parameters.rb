# frozen_string_literal: true

module GameParameters
  MAX_CARDS        = Card.count
  MAX_WORKERS      = Worker::TOTAL_WORKERS
  MAX_REQUIREMENTS = Card.max_requirements

  PROJECT_COUNT = 16

  DECK_GROUPS = {
    All:     'All Decks in Game',
    Grid:    'All Decks for Grid',
    Player:  'All Decks for Players',
    Draw:    'Draw Deck',
    Discard: 'Discard Deck'
  }.with_indifferent_access

  POOL_GROUPS = {
    All:     'All Pools in Game',
    Tracker: 'All Pools for Tracker',
    Grid:    'All Pools for Grid'
  }.with_indifferent_access

  PLAYERS = {Player1: 'Player 1', Player2: 'Player 2', Player3: 'Player 3', Player4: 'Player 4'
  }.with_indifferent_access

  GRID = (1..PROJECT_COUNT).reduce({}) do |grid, i|
    grid["Player#{i}"] = "Player #{i}"
    grid
  end.with_indifferent_access

  NAMES_FOR_NUMBERS = %w{Zed One Two Three Four}
end
