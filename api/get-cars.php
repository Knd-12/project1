<?php

$dbcreds = parse_ini_file('../env.ini', true);

// Create connection
$conn = new mysqli(
    $dbcreds['db']['servername'],
    $dbcreds['db']['username'],
    $dbcreds['db']['password'],
    $dbcreds['db']['dbname'],
);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$whereClause = '';

if( !empty($_POST['search']) ){

    $search = mysqli_real_escape_string($conn, $_POST['search']);

    $whereClause = "
    WHERE CONCAT(year, ' ', make) LIKE '%".$search."%'
    OR model LIKE '%".$search."%'
    OR nickname LIKE '%".$search."%'
    

    ";
} 

$sql = "SELECT year, make, model, nickname FROM cars $whereClause";


$result = $conn->query($sql);

$xssArr = array();
if($result->num_rows > 0){

    $x = 0;
    while($row = $result->fetch_assoc()){

        foreach($row as $column => $value){
            $xssArr[$x][$column] = htmlspecialchars($value, ENT_QUOTES);
        }

        $x++;

    }
}





$conn->close();

echo json_encode($xssArr);

exit();