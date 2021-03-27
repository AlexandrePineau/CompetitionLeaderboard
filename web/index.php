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
        <a href="pages/athletes.php">Athletes</a>
        <a href="pages/competitions.php">Competitions</a>
        <a href="pages/contacts.php">Contacts</a>
        <a href="pages/events.php">Events</a>
        <a href="pages/hosts.php">Hosts</a>
        <a href="pages/partners.php">Partners</a>
        <a href="pages/registrations.php">Registrations</a>
        <a href="pages/scores.php">Scores</a>
<?php
    //Connect to DB
    $dbconn = pg_connect("host=localhost port=5432 dbname=csi2532 user=postgres password=root");
?>
    </body>
</html>