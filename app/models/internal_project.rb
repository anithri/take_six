# == Schema Information
#
# Table name: internal_projects
#
#  id          :bigint(8)        not null, primary key
#  itar_flag   :boolean          default(TRUE)
#  name        :string           not null
#  project_num :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer          default(100), not null
#  status_id   :integer          default(100), not null
#
# Indexes
#
#  index_internal_projects_on_category_id                  (category_id)
#  index_internal_projects_on_name                         (name) UNIQUE
#  index_internal_projects_on_project_num_and_category_id  (project_num DESC,category_id) UNIQUE
#  index_internal_projects_on_status_id                    (status_id)
#

class InternalProject < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :status

  validates :name, presence: true, uniqueness: true
  validates :category_id, presence: true
  validates :status_id, presence: true
  validates :project_num, uniqueness: {scope: :category_id}

  scope :by_category, ->(cat_id) {where(category_id: cat_id)}

  def self.next_num_in_category(cat_id)
    current = self.by_category(cat_id).maximum(:project_num) || 300
    current + 1
  end
end
