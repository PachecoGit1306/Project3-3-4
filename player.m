classdef player
    properties
        name
        team
        hits
        walks
        atbats
    end

    properties (Dependent)
        battingAvg
        onBasePct
    end

    methods

function obj = player(name, team, hits, walks, atbats)
            obj.name = name;
            obj.team = team;
            obj.hits = hits;
            obj.walks = walks;
            obj.atbats = atbats;
        end

        % Calculate batting average
        function avg = get.battingAvg(obj)
            if obj.atbats == 0
                avg = 0;
            else
                avg = obj.hits / obj.atbats;
            end
        end

        % Calculate on-base percentage
        function pct = get.onBasePct(obj)
            denominator = obj.atbats + obj.walks;
            if denominator == 0
                pct = 0;
            else
                pct = (obj.hits + obj.walks) / denominator;
            end
        end
