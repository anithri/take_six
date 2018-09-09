# frozen_string_literal: true

class Types::PoolsInput < Types::BaseInputObject
  argument :game_id, ID, required: true
  argument :board_ids, [ID], required: false
end
