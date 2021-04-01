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
}

// Adding event listenners to the headers of each leaderboard
var leaderboard;
var leaderboardHeaders;

for (var i = 0; i < leaderboardIds.length; i++) {
    leaderboard = document.getElementById(leaderboardIds[i]);
    leaderboardHeaders = leaderboard.getElementsByTagName("th");

    for (var j = 1; j < leaderboardHeaders.length; j++) {
        let colName = leaderboardHeaders[j].innerHTML;
        let tableId = leaderboardIds[i];
        leaderboardHeaders[j].addEventListener("click", function(){ sortScores(colName, tableId); });
    }
}

// Sorts the given column on the leaderboard
function sortScores(colName, tableId) {
    var leaderboard = document.getElementById(tableId);
    var leaderboardHeaders = leaderboard.getElementsByTagName("th");
    var leaderboardRows = leaderboard.getElementsByTagName("tr");
    var colNum = 1;

    // In case of a single athlete
    if (leaderboardRows.length < 3) {
        return;
    }

    // Find which column is to be sorted
    for (var i = 0; i < leaderboardHeaders.length; i++) {
        if (leaderboardHeaders[i].innerHTML == colName) {
            colNum = i;
        }
    }

    // Determining which order to sort the scores
    var first, second, cols, val;
    for (var i = 1; i < leaderboardRows.length; i++) {
        cols = leaderboardRows[i].getElementsByTagName("td");
        val = parseInt(cols[colNum].innerHTML.replace(/\D/g,''));
        if (val != null) {
            if (first == null) {
                first = val;
            } else {
                second = val;
                break;
            }
        }
    }

    var scoreA, scoreB, temp, index;
    if (first < second) {
        // Sorting by DESC (selection sort)
        for (var i = 1; i < leaderboardRows.length-1; i++) {
            scoreA = parseInt((leaderboardRows[i].getElementsByTagName("td"))[colNum].innerHTML.replace(/\D/g,''));
            scoreB = parseInt((leaderboardRows[i+1].getElementsByTagName("td"))[colNum].innerHTML.replace(/\D/g,''));
            index = i+1;
            // Find highest score remaining
            for (var j = i+1; j < leaderboardRows.length; j++) {
                temp = parseInt((leaderboardRows[j].getElementsByTagName("td"))[colNum].innerHTML.replace(/\D/g,''));
                if (temp > scoreB) {
                    scoreB = temp;
                    index = j;
                }
            }
            // Replace i with highest score remaining
            if (scoreB > scoreA) {
                switchRows(leaderboardRows[i], leaderboardRows[index]);
            }
        }
    } else {
        // Sorting by ASC (selection sort)
        for (var i = 1; i < leaderboardRows.length-1; i++) {
            scoreA = parseInt((leaderboardRows[i].getElementsByTagName("td"))[colNum].innerHTML.replace(/\D/g,''));
            scoreB = parseInt((leaderboardRows[i+1].getElementsByTagName("td"))[colNum].innerHTML.replace(/\D/g,''));
            index = i+1;
            // Find lowest score remaining
            for (var j = i+1; j < leaderboardRows.length; j++) {
                temp = parseInt((leaderboardRows[j].getElementsByTagName("td"))[colNum].innerHTML.replace(/\D/g,''));
                if (temp < scoreB) {
                    scoreB = temp;
                    index = j;
                }
            }
            // Replace i with lowest score remaining
            if (scoreB < scoreA) {
                switchRows(leaderboardRows[i], leaderboardRows[index]);
            }
        } 
    }
}

// Switches rows in a table (leaderboard)
function switchRows(row1, row2) {
    var temp = row1.innerHTML;
    row1.innerHTML = row2.innerHTML;
    row2.innerHTML = temp;
}