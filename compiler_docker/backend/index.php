<?php
//var_dump($_POST["code"]);
file_put_contents("compile.php", $_POST["code"]);

$output = "";
$run_file = exec("php -f compile.php", $output);

echo json_encode($output);
