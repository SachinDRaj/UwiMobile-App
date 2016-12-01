<?php


function loadUwiDatabaseFromFile(){
    $filename = "uwidatabase.csv";
    // Convert the CSV file into an array
    $raw_csv = array_map('str_getcsv', file($filename));

    $recs = array();
    // Convert the 2D indexed array into an array of associative arrays

    for($i = 1; $i < count($raw_csv); $i++){
        array_push($recs, array(
            $raw_csv[0][0] => $raw_csv[$i][0],
            $raw_csv[0][1] => $raw_csv[$i][1],
            $raw_csv[0][2] => $raw_csv[$i][2],
            $raw_csv[0][3] => $raw_csv[$i][3],
            $raw_csv[0][4] => $raw_csv[$i][4],
            $raw_csv[0][5] => $raw_csv[$i][5],
            $raw_csv[0][6] => $raw_csv[$i][6],
            $raw_csv[0][7] => $raw_csv[$i][7],
            $raw_csv[0][8] => $raw_csv[$i][8],
            $raw_csv[0][9] => $raw_csv[$i][9],
            $raw_csv[0][10] => $raw_csv[$i][10],
            $raw_csv[0][11] => $raw_csv[$i][11],
            $raw_csv[0][12] => $raw_csv[$i][12],
            $raw_csv[0][13] => $raw_csv[$i][13],
            $raw_csv[0][14] => $raw_csv[$i][14]
         

        ));
    }
  
    return $recs;
}

function getDBConnection(){
    try{ 
        $db = new mysqli("localhost", "root", "", "uwiregistration");
        if ($db->connect_errno > 0)return null;
        return $db;
    }catch(Exception $e){ } 
    return null;
}

function populateFacultyTableDB(){
    $db = getDBConnection();
    if ($db != null){
        $recs = loadCountriesFromFile();
        foreach ($recs as $rec){
            $name = $rec['Name'];
            $code = $rec['Code'];
            $sql = "INSERT INTO `countries` (`name`, `code`) VALUES ('$name', '$code');";
            $db->query($sql);
            if ($db->insert_id == 0)error_log("Unable to save $name", 0);
        }
        $db->close();
    }else error_log("Unable to connect to DB", 0);
}



getDBConnection();

?>