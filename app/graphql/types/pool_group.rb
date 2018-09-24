module Types
  class PoolGroup < Types::BaseEnum
    include GameParameters
    POOL_GROUPS.each_pair do |(name, description)|
      value name, description
    end
  end
end
