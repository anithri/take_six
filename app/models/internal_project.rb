# == Schema Information
#
# Table name: internal_projects
#
#  id              :bigint(8)        not null, primary key
#  itar_flag       :boolean          default(TRUE)
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  category_id     :integer          default(100)
#  created_by_id   :integer
#  project_id      :integer
#  requested_by_id :integer
#  status_id       :integer          default(100)
#

class InternalProject < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
end
