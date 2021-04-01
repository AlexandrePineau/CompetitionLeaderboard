<html>
    <head>
        <title>
            MeFit Admins
        </title>
        <link rel="stylesheet" href="style.css"/>
    </head>
    <body>
        <a href="/index.php">Return to homepage</a></br></br>

        <?php
            // Validate token
            if ($_POST["token"] != "123abc") {
                echo "<b>invalid token</b></br>";
                echo "Given token: " . $_POST["token"] . "</br>";
            } else {
                // Les pages qui contient toutes les données du DB
                echo "
                <h1>MeFit Data</h1>
                    <table>
                        <tr>
                            <td><a href='athletes.php'>Athletes</a></td>
                            <td><a href='competitions.php'>Competitions</a></td>
                            <td><a href='contacts.php'>Contacts</a></td>
                            <td><a href='events.php'>Events</a></td>
                            <td><a href='hosts.php'>Hosts</a></td>
                            <td><a href='partners.php'>Partners</a></td>
                            <td><a href='registrations.php'>Registrations</a></td>
                            <td><a href='scores.php'>Scores</a></td>
                        </tr>
                    </table></br></br>";

                // Aajouter des partenaires
                echo "
                <h1>Add Partners</h1>
                <form action='validatePartner.php' method='post'>
                    Company Name:</br><input type='text' name='company_name' required></br></br>
                    Company Address:</br><input type='text' name='company_address' required></br></br>
                    <input type='submit'>
                </form>";

                // Inscrire des athletes à des competitions
                echo "
                <h1>Register Athletes</h1>
                <form action='validateRegistration.php' method='post'>
                Athlete:</br>
                <input list='athletes' name='athlete' required>
                <datalist id='athletes'>";
                    
                // Connect to DB
                $dbconn = pg_connect("host=localhost port=5432 dbname=csi2532 user=postgres password=root");
	
                // Get athletes
                $athlete_query = "SELECT full_name FROM athletes";
                $athletes_results = pg_query($athlete_query) or die('Query failed: ' . pg_last_error());
                $athletes = pg_fetch_all($athletes_results);

                // Add athletes as options
                for ($i = 0; $i < count($athletes); $i++) {
                    echo "<option value='" . $athletes[$i]["full_name"] . "'>";
                }
                echo "</datalist></br></br>";
                
                echo " 
                Competition:</br>
                <input list='competitions' name='competition' required>
                <datalist id='competitions'>";

                // Get competitions
                $competitions_query = "SELECT competition_name FROM competitions";
                $competitions_results = pg_query($competitions_query) or die('Query failed: ' . pg_last_error());
                $competitions = pg_fetch_all($competitions_results);

                // Add competitionss as options
                for ($i = 0; $i < count($competitions); $i++) {
                    echo "<option value='" . $competitions[$i]["competition_name"] . "'>";
                }
                
                echo "</datalist></br></br>";

                echo"<input type='submit'></form>";
               
            }
        ?>
        
    </body>
</html>
