# == Schema Information
#
# Table name: pools
#
#  id          :uuid             not null, primary key
#  space_type  :string
#  worker_data :jsonb
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  game_id     :uuid
#  space_id    :string
#
# Indexes
#
#  index_pools_on_game_id     (game_id)
#  index_pools_on_space_type  (space_type)
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#

require 'rails_helper'

RSpec.describe Pool, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
