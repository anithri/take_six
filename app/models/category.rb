require 'active_hash'
class Category < ActiveHash::Base
  include ActiveHash::Associations
  field :id
  field :name
  field :abbr
  field :alternatives, default: []

  has_many :internal_projects

  def display_name
    "#{abbr}#{id}"
  end

  def self.find_from(term)
    self.find_by_id(term) ||
      self.find_by_abbr(term) ||
      self.find_by_name(term) ||
      self.find_by_alternative(term)

  end

  def self.find_by_alternative(term)
    self.all.find {|c| c.alternatives.include? term}
  end

  create id:           100,
         name:         'General',
         abbr:         'G',
         alternatives: ['GA', 'GO']

  create id:           200,
         name:         'Research & Development',
         abbr:         'RD',
         alternatives: ['R&D']

  create id:   300,
         name: 'Business Development',
         abbr: 'BD'

  create id:   400,
         name: 'New Service',
         abbr: 'NS'

end
