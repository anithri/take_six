module Types
  class DeckGroup < Types::BaseEnum
    include GameParameters
    DECK_GROUPS.entries.each do |(name, description)|
      value name, description
    end
  end
end
