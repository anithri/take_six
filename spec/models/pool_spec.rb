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

require 'rails_helper'

RSpec.describe Pool, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
