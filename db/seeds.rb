
names = %w(Bruce Barbara Dick Jason Carrie Tim Stephanie Damien Selina Alfred Jim Lucius Leslie)


names.each{|name| Player.find_or_create_by(name: name)}
