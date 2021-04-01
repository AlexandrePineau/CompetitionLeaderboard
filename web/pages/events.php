<html>
    <head>
        <title>
            MeFit Events
        </title>
        <link rel="stylesheet" href="style.css"/>
    </head>
    <body>
        <a href="/index.php">Return to homepage</a>
        <h1>
           Events
        </h1> 
<?php
    //Connect to DB
    $dbconn = pg_connect("host=localhost port=5432 dbname=csi2532 user=postgres password=root");
	
    //Get athletes
    $athlete_query = "SELECT * FROM events";
    $athletes = pg_query($athlete_query) or die('Query failed: ' . pg_last_error());

    //Print athletes
    echo "<table>\n";
    echo "<tr>\n";
    echo "<th>event_id</th>\n";
    echo "<th>competition_id</th>\n";
    echo "<th>event_name</th>\n";
    echo "<th>scoring</th>\n";
    echo "<th>time_capped</th>\n";
    echo "<th>tie_breaker</th>\n";
    echo "<tr>\n";
    while ($line = pg_fetch_array($athletes, null, PGSQL_ASSOC)) {
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