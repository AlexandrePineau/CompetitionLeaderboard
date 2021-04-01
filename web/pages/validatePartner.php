<html>
    <head>
        <title>Insert Partner</title>
    </head>
    <body>
        <a href="/index.php">Return to homepage</a></br></br>

        <?php
            // Connect to DB
            $dbconn = pg_connect("host=localhost port=5432 dbname=csi2532 user=postgres password=root");

            // Get first available id
            $id_query = "
                SELECT MAX (partner_id) FROM partners
            ";
            $id_results = pg_query($id_query) or die('Query failed: ' . preg_last_error());
            $id = pg_fetch_all($id_results);
            $new_id = intval($id[0]['max']) + 1;

            // Insert partner
            $company_name = $_POST["company_name"];
            $company_address = $_POST["company_address"];

            $insert_query = "
                INSERT INTO partners (partner_id, company_name, company_address)
                VALUES
                    (" . $new_id . ", '" . $company_name . "', '" . $company_address . "')
            ";
            $insert_results = pg_query($insert_query) or die('Query failed: ' . preg_last_error());
            $insert = pg_fetch_all($insert_results);
            echo "success!";
        ?>
    </body>
</html>