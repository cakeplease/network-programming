<?php
file_put_contents("compile.php", $_POST["code"]);
$output = null;
$res_code = null;
$run_file = exec("php -f compile.php", $output, $res_code);

if ($res_code === 0) {
    $res = [];
    $res['status'] = 'success';
    $res['result'] = $output;
} else {
    $res = [];
    $res['status'] = 'failed';
    $res['result'] = $output;
}

echo json_encode($res);
