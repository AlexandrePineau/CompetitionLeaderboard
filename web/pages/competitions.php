<html>
    <head>
        <title>
            MeFit Competitions
        </title>
        <link rel="stylesheet" href="style.css"/>
    </head>
    <body>
        <a href="/index.php">Return to homepage</a>
        <h1>
            Competitions
        </h1> 
<?php
    //Connect to DB
    $dbconn = pg_connect("host=localhost port=5432 dbname=csi2532 user=postgres password=root");

    //Get competitions 
    $competition_query = "SELECT * FROM competitions";
    $competitions = pg_query($competition_query) or die('Query failed: ' . pg_last_error());

    //Print competetions
    echo "<table>\n";
    echo "<tr>\n";
    echo "<th>competition_id</th>\n";
    echo "<th>competition_name</th>\n";
    echo "<th>venue</th>\n";
    echo "<th>start_time</th>\n";
    echo "<th>end_time</th>\n";
    echo "<th>days_long</th>\n";
    echo "<th>number_of_events</th>\n";
    echo "<th>max_males</th>\n";
    echo "<th>max_females</th>\n";
    echo "<tr>\n";
    while ($line = pg_fetch_array($competitions , null, PGSQL_ASSOC)) {
        echo "<tr>\n";
        foreach ($line as $col_value) {
            echo "<td>$col_value</td>\n";
        }
        echo "</tr>\n";
    }
    echo "</table></br>\n";

?>
    </body>
</html>