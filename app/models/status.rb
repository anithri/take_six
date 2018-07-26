require 'active_hash'
class Status < ActiveHash::Base
  include ActiveHash::Associations

  field :id
  field :name

  has_many :internal_projects

  def self.find_from(term)
    self.find_by_id(term) || self.find_by_name(term)
  end

  create id:    100,
         name:  'planned'

  create id:    200,
         name:  'active'

  create id:    300,
         name:  'completed'

  create id:    400,
         name:  'canceled'
end
