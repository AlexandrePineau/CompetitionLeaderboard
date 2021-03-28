<html>
    <head>
        <title>
            CSI 2532 - Deliverable 3
        </title>
        <link rel="stylesheet" href="style.css"/>
    </head>
    <body>
        <h1> 
            CSI 2532 - Deliverable 3
        </h1>
        <h2>
            Alexandre Pineau - 300066713
        </h2>

        <table>
            <tr>
                <td><a href="pages/athletes.php">Athletes</a></td>
                <td><a href="pages/competitions.php">Competitions</a></td>
                <td><a href="pages/contacts.php">Contacts</a></td>
                <td><a href="pages/events.php">Events</a></td>
            </tr>
            <tr>
                <td><a href="pages/hosts.php">Hosts</a></td>
                <td><a href="pages/partners.php">Partners</a></td>
                <td><a href="pages/registrations.php">Registrations</a></td>
                <td><a href="pages/scores.php">Scores</a></td>
            </tr>
        </table> 

        <h2>
            Competition Leaderboards
        </h2>

        <?php
            // PRINTING LEADERBOARDS FOR EACH COMPETITION

            // Connect to DB
            $dbconn = pg_connect("host=localhost port=5432 dbname=csi2532 user=postgres password=root");

            // Get competitions with scores data
            $competitions_query = "
                SELECT competition_id, competition_name 
                FROM competitions
                WHERE competition_id IN (
                    SELECT DISTINCT competition_id 
                    FROM events 
                    WHERE event_id IN (
                        SELECT DISTINCT event_id
                        FROM scores)
                    )
                ";
            $competitions_result = pg_query($competitions_query) or die('Query failed: ' . pg_last_error());
            $competitions = pg_fetch_all($competitions_result);

            // Creating leaderboard for each competition
            for ($i = 0; $i < count($competitions); $i++) {
                // Write competition's title
                echo "<h3>" . $competitions[$i]['competition_name'] . "</h3>";

                // Gather events from the current competition
                $events_query = "
                    SELECT event_name
                    FROM events
                    WHERE competition_id = " . $competitions[$i]["competition_id"]
                    ;
                $events_result = pg_query($events_query) or die ('Query failed: ' . pg_last_error());
                $events = pg_fetch_all($events_result);

                // Write each event in the current competition
                echo "
                    <table>
                        <tr>
                            <th>Athlete</th>
                            <th>Points</th>
                ";
                for ($j = 0; $j < count($events); $j++) {
                    echo "<th>" . $events[$j]["event_name"] . "</th>";
                }

            }
        ?>
    </body>
</html>