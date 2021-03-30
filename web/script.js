/* 
This script: 
    - fills the points collumn of the leaderboards
    - adds sorting features to the leaderboards
*/

// Gathering leaderboards
var leaderboards = document.getElementsByClassName("leaderboard");
var leaderboardIds = [];

for (var i = 0; i < leaderboards.length; i++) {
    leaderboardIds[i] = leaderboards[i].id;
    console.log(leaderboardIds[i]);
}

// Adding event listenners to the headers of each leaderboard
var leaderboard;
var leaderboardHeaders;

for (var i = 0; i < leaderboardIds.length; i++) {
    leaderboard = document.getElementById(leaderboardIds[i]);
    leaderboardHeaders = leaderboard.getElementsByTagName("th");

    for (var j = 0; j < leaderboardHeaders.length; j++) {
        let colName = leaderboardHeaders[j].innerHTML;
        let tableId = leaderboardIds[i];
        if (j == 0) {
            leaderboardHeaders[j].addEventListener("click", function(){ sortSexes(tableId); });
        } else if (j > 0) {
            leaderboardHeaders[j].addEventListener("click", function(){ sortScores(colName, tableId); });
        }
    }
}

// Sorts the given column on the leaderboard
function sortScores(colName, tableId) {
    var leaderboard = document.getElementById(tableId);
    var leaderboardHeaders = leaderboard.getElementsByTagName("th");
    var leaderboardRows = leaderboard.getElementsByTagName("tr");
    var colNum = 1;
    var scores = [];
    var score;

    // In case of a single athlete
    if (leaderboardRows.length < 2) {
        return;
    }

    // Find which column is to be sorted
    for (var i = 0; i < leaderboardHeaders.length; i++) {
        if (leaderboardHeaders[i].innerHTML == colName) {
            colNum = i;
        }
    }

    // Determining which order to sort the scores
    var colsA = leaderboardRows[1].getElementsByTagName("td");
    var scoreA = parseInt(colsA[colNum].innerHTML.replace(/\D/g,''));
    var colsB = leaderboardRows[leaderboardRows.length-1].getElementsByTagName("td");
    var scoreB = parseInt(colsB[colNum].innerHTML.replace(/\D/g,''));

    if (scoreA < scoreB) {
        // Sorting by DESC
        for (var i = 1; i < leaderboardRows.length; i++) {
            colsA = leaderboardRows[i].getElementsByTagName("td");
            scoreA = parseInt(colsA[colNum].innerHTML.replace(/\D/g,''));
            for (var j = 2; i < leaderboardRows.length; j++) {
                colsB = leaderboardRows[j].getElementsByTagName("td");
                scoreB = parseInt(colsB[colNum].innerHTML.replace(/\D/g,''));
                if (scoresB )
            }
        }
    } else {
        // Sorting by ASC
        
    }
}

// Sorts the given leaderboard by the sexe of its athletes
function sortSexes(tableId) {

}