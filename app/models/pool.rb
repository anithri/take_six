# == Schema Information
#
# Table name: pools
#
#  id          :uuid             not null, primary key
#  worker_data :jsonb
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  board_id    :string
#  game_id     :uuid
#
# Indexes
#
#  index_pools_on_game_id  (game_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#

class Pool < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :game
  belongs_to :board

  def workers
    worker_data.entries.map do |(worker_id, count)|
      [Worker.find(worker_id)] * count
    end.flatten
  end
end
