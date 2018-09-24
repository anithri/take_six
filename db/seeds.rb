names = %w(Bruce Barbara Dick Jason Carrie Tim Stephanie Damien Selina Alfred Jim Lucius Leslie)

names.each{|name| User.find_or_create_by(name: name)}

4.times do
  CreateGame.call
end
