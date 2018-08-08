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

class WorkerArea < ApplicationRecord
end
