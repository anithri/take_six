# frozen_string_literal: true
module Types
  class PoolsInput < Types::BaseInputObject
    argument :game_id, ID, required: true
    argument :board_ids, [ID], required: false
    argument :group, ::Types::PoolGroup, required: false
  end
end
