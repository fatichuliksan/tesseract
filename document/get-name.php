<?php
require('../config/helper.php');
require('../config/Db.php');
$url = base_url() . "document";


$db = new Db();
$connection = $db->getConnection();

$documentId = $_REQUEST["id"];
$dataPegawai = $db->getAll("select * from pegawai order by id asc");


foreach ($dataPegawai as $pegawaiIndex => $i) {
    $dataFile = $db->getAll("select * from files where document_id={$documentId}");

    $fileIds = [];
    foreach ($dataFile as $index => $d) {
        array_push($fileIds, $d["ID"]);
    }
    $fileIds = implode(",", $fileIds);
    foreach ($dataFile as $index => $d) {
        if ($index > 1) {
            $nameExploded = explode(" ", str_replace(",", "", strtolower($i["NAMA"])));

            $string = strtolower($d["TEXT"]);

//            var_dump($i);
//            var_dump($string);
//            die();

            $temp = [];
            foreach ($nameExploded as $nameIndex => $name) {
                // string to array
                $words = str_word_count($string, 1);

                $wordIndexPositions = [];
                foreach ($words as $wordIndex => $word) {
                    if ($word == strtolower($name)) {
                        array_push($wordIndexPositions, [
                            "INDEX" => $wordIndex,
                            "NAMA" => $name,
                        ]);
                    }
                }
                array_push($temp, $wordIndexPositions);
            }

//            if ($i["id"] == 32) {
////                var_dump($i, $nameExploded, $words);
////                    var_dump($nameExploded);
////                    var_dump($name);
////                    var_dump($words);
//                var_dump($sql);
//                die();
//            }


            // cek sort position
            if (count($temp) == 1) {
                if (count($temp[0]) > 0) {
                    // insert data pegawai
                    $cek = $db->getAll("select * from file_pegawai where file_id in({$fileIds}) and pegawai_id={$i['ID']}");
                    if (count($cek) == 0) {
                        $sql = "INSERT INTO file_pegawai (file_id,pegawai_id) VALUES ({$d['ID']},{$i['ID']})";
                        $result = $db->execute($sql);
                    }
                }
            } else {
                if ($temp) {
                    foreach ($temp[0] as $t) {
                        $found = cek($temp, $t['INDEX'] + 1, 1, $nameExploded);
                        if ($found) {
                            // insert data pegawai
                            $cek = $db->getAll("select * from file_pegawai where file_id in({$fileIds}) and pegawai_id={$i['ID']}");
                            if (count($cek) == 0) {
                                $sql = "INSERT INTO file_pegawai (file_id,pegawai_id) VALUES ({$d['ID']},{$i['ID']})";
                                $result = $db->execute($sql);
                            }
                        }
                    }
                }
            }
        }
    }
}

// recursive cek next position
function cek($data, $positionAfter, $nameIndex, $nameExploded)
{
    $found = false;
    if ($nameIndex == count($data) - 1) {
        foreach ($data[$nameIndex] as $position) {
            if ($position['INDEX'] == $positionAfter and $position['NAMA'] == $nameExploded[$nameIndex]) {
                $found = true;
            }
        }
    } else if ($nameIndex < count($data)) {
        foreach ($data[$nameIndex] as $position) {
            if ($position['INDEX'] == $positionAfter and $position['NAMA'] == $nameExploded[$nameIndex]) {
                $found = cek($data, $position['INDEX'] + 1, $nameIndex + 1, $nameExploded);
            }
        }
    }
    return $found;
}

redirect($url);
