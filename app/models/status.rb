require 'active_hash'
class Status < ActiveHash::Base
  field :id
  field :name

  def self.find_from(term)
    self.find()
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
