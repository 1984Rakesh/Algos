import Foundation

func tournamentWinner(_ competitions: [[String]], _ results: [Int]) -> String {
    var teamPoints : [String:Int] = [String:Int]()
    var tournamentWinningTeam : String = ""
    for (index, competiton) in competitions.enumerated() {
        let result = results[index]
        let matchWiningTeam = competiton[abs(result-1)]
        teamPoints[matchWiningTeam] = (teamPoints[matchWiningTeam] ?? 0) + 3
        if( (teamPoints[matchWiningTeam] ?? 0) > (teamPoints[tournamentWinningTeam] ?? 0)) {
            tournamentWinningTeam = matchWiningTeam
        }
    }
    return tournamentWinningTeam
}

// [Home Team, Away Team]
// in results 0 means away tem won, 1 mean home team won the match
let competitions = [["HTML", "C#"], ["C#", "Python"], ["Python", "HTML"]];
let results = [0, 0, 1]
tournamentWinner( competitions, results)
