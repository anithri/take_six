class Worker < ActiveHash::Base

  TOTAL_WORKERS = 4 * 30

  field :name

  def theme
    self.id
  end

  create id: 'workerRed',
        name: 'workerRed'

  create id: 'workerBlue',
        name: 'workerBlue'

  create id: 'workerGreen',
        name: 'workerGreen'

  create id: 'workerPurple',
        name: 'workerPurple'

  class << self
    def all_ids
      self.all.map(&:id)
    end

    def pool(count)
      self.all_ids * count
    end
  end
end
