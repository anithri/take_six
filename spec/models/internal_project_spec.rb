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

require 'rails_helper'

RSpec.describe InternalProject, type: :model do
  before :each do
    @project = InternalProject.new({
                                     name:       'My Internal Project',
                                     project_id: 100,
                                   }
    )
  end

  describe '@project = InternalProject.new(...)' do
    it 'should have attributes' do
      expect(@project).to have_attributes(
                            name:        'My Internal Project',
                            category_id: 100,
                            category:    Category.find(100),
                            project_id:  100,
                            status_id:   100,
                            status:      Status.find(100),
                          )
    end

  end
end
