# frozen_string_literal: true

class Types::GridAreaInput < Types::BaseInputObject
  argument :game_id, ID, required: true
  argument :grid_area_id, ID, required: true
end
