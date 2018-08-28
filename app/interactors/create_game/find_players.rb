module CreateGame
  class FindPlayers
    include Interactor

    def call
      chairs  = Chair.all
      players = User.active.for_game(chairs.count)

      seats = players.each_with_index.map do |p, idx|
        Seat.new({chair_id: chairs[idx].id, player: p, })
      end

      context.players = players
      context.seats   = seats
    end
  end
end
