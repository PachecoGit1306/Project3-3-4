numPlayers = input("How many players do you want to enter:\n");

players = player.empty;

for i = 1:numPlayers
    name = input("Enter the name of the baseball player: ", 's');
    team = input("Enter the name of the team they play on: ", 's');
    hits = input("Enter their number of hits: ");
    atbats = input("Enter their number of at bats: ");
    walks = input("Enter their number of walks: ");

    players(i) = player(name, team, hits, walks, atbats);
end
