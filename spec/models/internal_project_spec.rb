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

require 'rails_helper'

RSpec.describe InternalProject, type: :model do
  before :each do
    @project = InternalProject.new(
      name:       'My Internal Project',
      project_num: 100,
    )
  end

  describe '@project = InternalProject.new(...)' do
    it 'should have attributes' do
      expect(@project).to have_attributes(
                            name:       'My Internal Project',
                            category:   Category.find(100),
                            project_num: 100,
                            status:     Status.find(100),
                          )
    end

  end
end
