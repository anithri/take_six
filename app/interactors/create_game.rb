module CreateGame
  class << self
    def call(ctx = {})
      CreateGame::Handler.call(ctx)
    end
  end
end
