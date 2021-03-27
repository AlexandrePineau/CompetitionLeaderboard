<html>
    <head>
        <title>
            MeFit Contacts
        </title>
        <link rel="stylesheet" href="style.css"/>
    </head>
    <body>
        <a href="/index.php">Return to homepage</a>
        <h1>
            Contacts
        </h1> 
<?php
    //Connect to DB
    $dbconn = pg_connect("host=localhost port=5432 dbname=csi2532 user=postgres password=root");

    //Get registrations
    $registration_query = "SELECT * FROM contacts";
    $registrations = pg_query($registration_query) or die('Query failed: ' . pg_last_error());

    //Print registrations 
    echo "<table>\n";
    echo "<tr>\n";
    echo "<th>contact_id</th>\n";
    echo "<th>contact_name</th>\n";
    echo "<th>contact_email</th>\n";
    echo "<th>contact_phone_number</th>\n";
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