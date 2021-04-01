<html>
    <head>
        <title>Insert Registration</title>
    </head>
    <body>
        <a href="/index.php">Return to homepage</a></br></br>

        <?php
            // Connect to DB
            $dbconn = pg_connect("host=localhost port=5432 dbname=csi2532 user=postgres password=root");

            // Get athlete id
            $athlete_query = "
                SELECT athlete_id FROM athletes WHERE full_name = '" . $_POST["athlete"] . "'
            ";
            $athlete_results = pg_query($athlete_query) or die('Query failed: ' . preg_last_error());
            $athlete_id = pg_fetch_all($athlete_results);
            $athlete_id = intval($athlete_id[0]['athlete_id']);

            // Get competition id
            $competition_query = "
                SELECT competition_id FROM competitions WHERE competition_name = '" . $_POST["competition"] . "'
            ";
            $competition_results = pg_query($competition_query) or die('Query failed: ' . preg_last_error());
            $competition_id = pg_fetch_all($competition_results);
            $competition_id = intval($competition_id[0]['competition_id']);

            // Insert registration
            $insert_query = "
                INSERT INTO registrations (athlete_id, competition_id)
                VALUES
                    (" . $athlete_id . ", " . $competition_id . ")
            ";
            $insert_results = pg_query($insert_query) or die('Query failed: ' . preg_last_error());
            $insert = pg_fetch_all($insert_results);
            echo "success!";
        ?>
    </body>
</html>