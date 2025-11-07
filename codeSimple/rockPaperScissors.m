function result = rockPaperScissors(p1, p2)
% rockPaperScissors  Determine the winner of a Rock-Paper-Scissors game
%
%   result = rockPaperScissors(p1, p2) returns a string indicating the outcome:
%       - "Tie" if both players choose the same
%       - "Player 1 wins" if player 1 beats player 2
%       - "Player 2 wins" if player 2 beats player 1
%       - Error if either input is invalid
%
%   Valid inputs: "rock", "paper", "scissors" (case-insensitive)
%
%   Example:
%       rockPaperScissors("rock", "scissors")     % returns "Player 1 wins"
%       rockPaperScissors("paper", "rock")        % returns "Player 1 wins"
%       rockPaperScissors("scissors", "scissors") % returns "Tie"

arguments
    p1 (1,1) string {mustBeMember(p1,["rock","paper","scissors"])}
    p2 (1,1) string {mustBeMember(p2,["rock","paper","scissors"])}
end

rockVsScissors  = p1 == "rock"     && p2 == "scissors";
scissorsVsPaper = p1 == "scissors" && p2 == "paper";
paperVsRock     = p1 == "paper"    && p2 == "rock";

% Compare hands
if p1 == p2
    result = "Tie";

elseif rockVsScissors || scissorsVsPaper || paperVsRock
    result = "Player 1 wins";

else
    result = "Player 2 wins";
end

end
