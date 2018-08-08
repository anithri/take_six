# frozen_string_literal: true

# == Schema Information
#
# Table name: worker_areas
#
#  id         :uuid             not null, primary key
#  worker_ids :integer          default([]), is an Array
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe WorkerArea, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
