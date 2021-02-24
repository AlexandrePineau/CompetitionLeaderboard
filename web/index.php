<html>
    <head>
        <title>
            CSI 2532 - Deliverable 2
        </title>
        <link rel="stylesheet" href="style.css"/>
    </head>
    <body>
        <h1>
            CSI 2532 - Deliverable 2
        </h1>
        <h2>
            Alexandre Pineau - 300066713
        </h2>
<?php
    //Connect to DB
    $dbconn = pg_connect("host=localhost port=5432 dbname=csi2532_deliverable2 user=postgres password=root");
	
    //Get athletes
    $athlete_query = "SELECT * FROM athletes";
    $athletes = pg_query($athlete_query) or die('Query failed: ' . pg_last_error());
    
    //Get competitions 
    $competition_query = "SELECT * FROM competitions";
    $competitions = pg_query($competition_query) or die('Query failed: ' . pg_last_error());

    //Get registrations
    $registration_query = "SELECT * FROM registrations";
    $registrations = pg_query($registration_query) or die('Query failed: ' . pg_last_error());

    //Print athletes
    echo "<h3>athletes</h3>\n";
    echo "<table>\n";
    echo "<tr>\n";
    echo "<th>athlete_id</th>\n";
    echo "<th>name</th>\n";
    echo "<th>birthday</th>\n";
    echo "<th>is male</th>\n";
    echo "<tr>\n";
    while ($line = pg_fetch_array($athletes, null, PGSQL_ASSOC)) {
        echo "<tr>\n";
        foreach ($line as $col_value) {
            echo "<td>$col_value</td>\n";
        }
        echo "</tr>\n";
    }
    echo "</table></br>\n";

    //Print competetions 
    echo "<h3>competitions</h3>\n";
    echo "<table>\n";
    echo "<tr>\n";
    echo "<th>competition_id</th>\n";
    echo "<th>competition_name</th>\n";
    echo "<th>venue</th>\n";
    echo "<th>start_time</th>\n";
    echo "<th>end_time</th>\n";
    echo "<th>days_long</th>\n";
    echo "<tr>\n";
    while ($line = pg_fetch_array($competitions , null, PGSQL_ASSOC)) {
        echo "<tr>\n";
        foreach ($line as $col_value) {
            echo "<td>$col_value</td>\n";
        }
        echo "</tr>\n";
    }
    echo "</table></br>\n";

    //Print registrations 
    echo "<h3>registrations</h3>\n";
    echo "<table>\n";
    echo "<tr>\n";
    echo "<th>athlete_id</th>\n";
    echo "<th>competition_id</th>\n";
    echo "<tr>\n";
    while ($line = pg_fetch_array($registrations , null, PGSQL_ASSOC)) {
        echo "<tr>\n";
        foreach ($line as $col_value) {
            echo "<td>$col_value</td>\n";
        }
        echo "</tr>\n";
    }
    echo "</table></br>\n";
    
    //Close DB connection
    pg_close($dbconn);
?>
    </body>
</html>