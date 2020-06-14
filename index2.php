<?php
require './vendor/autoload.php';


use thiagoalessio\TesseractOCR\TesseractOCR;

$text =  (new TesseractOCR('./img/img9.jpg'))
    ->tempDir('./temp')
    ->run();
echo $text;
die();


//     echo (new TesseractOCR('./img/img23.jpg'))
// ->tempDir('./temp')
//     ->run();


$string = "POLITEKNIK ELEKTRONIKA NEGERI SURABAYA";

$res = explode(" ", $text);

$start = null;
$finish = null;
foreach ($res as $index => $a) {
    if (strtolower($a) == "tentang") {
        $start = $index;
    }

    if (strtolower($a) == "politeknik" && !is_null($start)) {
        $finish = $index;
        break;
    }
}
$output = array_slice($res, $start+1, $finish-$start-1);

var_dump(implode(" ", $output));
echo "<br><br>";

preg_match('/Dosen/', implode(" ", $output), $matches);
var_dump($matches);
