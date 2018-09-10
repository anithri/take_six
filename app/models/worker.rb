# frozen_string_literal: true

class Worker < ActiveHash::Base
  TOTAL_WORKERS = 4 * 30

  field :name

  attr_accessor :count

  def theme
    self.id
  end

  def to_s
    id
  end

  create id:   'workerRed',
         name: 'Red'

  create id:   'workerBlue',
         name: 'Blue'

  create id:   'workerGreen',
         name: 'Green'

  create id:   'workerPurple',
         name: 'Purple'

  class << self
    def all_ids
      self.all.map(&:id)
    end

    def pool(count)
      self.all_ids.reduce({}) {|p, wid| p[wid] = count; p}
    end

    def all_goals
      Worker.all.shuffle.map {|w| Worker.all - [w]}
    end
  end
end
