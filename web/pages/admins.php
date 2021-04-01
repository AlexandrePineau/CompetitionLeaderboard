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
            if ($_POST["token"] != "123abc") {
                echo "<b>invalid token</b></br>";
                echo "Given token: " . $_POST["token"] . "</br>";
            } else {
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
            }
        ?>
    </body>
</html>
