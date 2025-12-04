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

%  filtering 
battingAbove300 = players([players.battingAvg] > 0.300);
onbaseAbove350  = players([players.onBasePct] > 0.350);

%  output for batting average
fprintf("\nThe players with a batting average higher than 0.300 are:\n");

for p = battingAbove300
    fprintf("%s:\n", p.name);
    fprintf("Team: %s\n", p.team);
    p.displayStats();
    fprintf("\n");
end
