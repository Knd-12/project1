<?php

$dbcreds = parse_ini_file('../../env.ini', true);

// Create connection
$conn = new mysqli(
    $dbcreds['db']['servername'],
    $dbcreds['db']['username'],
    $dbcreds['db']['password'],
    $dbcreds['db']['dbname']
);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$id = (int)$_POST['car_id'];

$sql = "DELETE FROM cars WHERE id='$id'";

$successArr = array('success'=>false);

if ($conn->query($sql) === TRUE) {
    $successArr['success'] = true;
} else {
    echo "Error deleting record: " . $conn->error;
}
    
$conn->close();

echo json_encode($successArr);
exit();