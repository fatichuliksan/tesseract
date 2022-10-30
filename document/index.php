<?php
require('../config/helper.php');
require('../config/Db.php');
require '../vendor/autoload.php';

use thiagoalessio\TesseractOCR\TesseractOCR;
use Spatie\PdfToImage\Pdf;

$layout = '../layout/';
$url = base_url() . "document";

$db = new Db();
$connection = $db->getConnection();

$root_dir = $_SERVER['DOCUMENT_ROOT'];
$app_dir = "/tesseract";

$target_dir_pdf = "/public/upload/pdf";
$target_dir_image = "/public/upload/image";

//$pdfFile = $target_dir_pdf . "20221029115112_SK TIM IMPLEMENTASI SAKIP 2019 - fix.PDF";
//var_dump($pdfFile);
//
//
//$pdf = new Spatie\PdfToImage\Pdf($pdfFile);
//$pdf->setOutputFormat('jpg')
//    ->saveImage($target_dir_image . "test.jpg");
//var_dump($pdf->getNumberOfPages());
//
////phpinfo();
//die();

if ($_SERVER['REQUEST_METHOD'] == "POST") {

    $file_name_pdf = date('YmdHis') . '_' . $_FILES["file"]["name"];
    $file_path_pdf = $target_dir_pdf . "/" . $file_name_pdf;
    $target_file_pdf = $root_dir . $app_dir . $file_path_pdf;

    $dir_name = preg_replace("/.pdf/", "", $file_name_pdf);
    $dir_name = preg_replace("/.PDF/", "", $dir_name);

    // UPLOAD PDF
    if (move_uploaded_file($_FILES["file"]["tmp_name"], $target_file_pdf)) {
        // insert data
        $sql = "INSERT INTO documents (title, program_studi_id, file_name, file_path) VALUES ('-', 0, '{$file_name_pdf}', '{$file_path_pdf}')";
        $result = $connection->query($sql);

        if ($result) {
            $insertId = $connection->insert_id;
            $title = "";
            // CONVERT PDF TO JPG PER PAGE
            $pdf = new Spatie\PdfToImage\Pdf($target_file_pdf);

            $file_path_image = $target_dir_image . "/" . $dir_name;
            $target_dir_image = $root_dir . $app_dir . $file_path_image;
            mkdir($target_dir_image);
            for ($i = 1; $i <= $pdf->getNumberOfPages(); $i++) {
                $file_name_image = $file_name_pdf . " - page" . $i . ".jpg";
                $pathToImage = $target_dir_image . "/" . $file_name_image;
                $file_path_image2 = $file_path_image . "/" . $file_name_image;

                $pdf->setPage($i)
                    ->setOutputFormat('jpg')
                    ->saveImage($pathToImage);

                $text = (new TesseractOCR($pathToImage))
                    ->tempDir('../temp')
                    ->run();

                $text = str_replace(['"'], '', $text);
                $text = str_replace(['|', '[', ']'], ' ', $text);
                $text = str_replace(', ', ',', $text);
                $text = str_replace(',', ', ', $text);
//                $text = str_replace(['\'', '`', '’', '‘'], '', $text);
                $text = str_replace("\n", ' ', $text);

                // cari judul dokumen
                if (empty($title)) {
                    $res = explode(" ", $text);
                    $start = null;
                    $finish = null;
                    foreach ($res as $index => $a) {
                        if (is_null($start)) {
                            if (strtolower($a) == "tentang") {
                                $start = $index;
                            }
                        }
                        if (is_null($finish) and $start) {
                            if (strtolower($a) == "politeknik" && !is_null($start)) {
                                $finish = $index;
                                break;
                            }
                        }
                    }

                    if ($finish and $title == "") {
                        $output = array_slice($res, $start + 1, $finish - $start - 1);
                        $title = implode(" ", $output);

                    }
                }
                // end cari judul dokumen


                $sql = "INSERT INTO file (document_id, file_path,file_name, text) VALUES ({$insertId},'{$file_path_image2}', '{$file_name_image}','{$text}')";
                $result = $connection->query($sql);
//                echo "The file " . basename($_FILES["files"]["name"][$index]) . " has been uploaded.";
            }


            // update title document
            $sql = "UPDATE documents SET title='" . $title . "' WHERE id=" . $insertId;
            $result = $connection->query($sql);

            $_SESSION['notifikasi'] = array(
                "type" => "success",
                "message" => "Berhasil disimpan!"
            );
            redirect($url);
        } else {
            $_SESSION['notifikasi'] = array(
                "type" => "error",
                "message" => "Unggah file gagal!"
            );
        }

        die();


    } else {
        $_SESSION['notifikasi'] = array(
            "type" => "error",
            "message" => "Gagal disimpan!"
        );
    }
}

$db = new Db();
$dataDocument = $db->getAll("select * from documents");

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Document</title>

    <?php include($layout . "css.php") ?>
</head>

<body id="page-top">
<?php include($layout . "navbar.php") ?>
<div id="wrapper">
    <?php include($layout . "sidebar.php") ?>
    <div id="content-wrapper">
        <div class="container-fluid">
            <!-- Breadcrumbs-->
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    Document
                </li>
            </ol>
        </div>
        <div class="row">
            <div class="container my-auto">
                <div class="card mb-3">
                    <div class="card-header">
                        <i class="fas fa-table"></i>
                        Document List
                        <!--                        <a href="--><?php //echo $url . "/create.php" ?><!--"-->
                        <!--                           class="btn btn-outline-primary btn-default float-right">Create</a>-->
                    </div>
                    <div class="card-body">
                        <?php include($layout . 'alert.php') ?>
                        <form action="" method="POST" enctype="multipart/form-data">
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Files (pdf)</label>
                                <div class="col-sm-8">
                                    <input type="file" class="form-control" name="file" placeholder="File"
                                           accept="application/pdf"/>
                                </div>
                                <div class="col-sm-2">
                                    <button type="submit" class="btn btn-primary">Upload</button>
                                </div>
                            </div>
                        </form>
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th width="5%">No.</th>
                                    <th>Title</th>
                                    <th>File</th>
                                    <th>Name List</th>
                                    <th width="20%"></th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php foreach ($dataDocument as $i => $value) { ?>
                                    <tr>
                                        <td><?php echo $i + 1 ?></td>
                                        <td><?php echo $value['title'] ?></td>
                                        <td>
                                            <a target="_blank"
                                               href="<?php echo base_url() . $value['file_path'] ?>"><?php echo $value['file_name'] ?></a>
                                        </td>
                                        <td>
                                            <ul><?php

                                                $q = "select pegawai.nama from file_pegawai
                                                      join file on file.id=file_pegawai.file_id
                                                      join pegawai on pegawai.id=file_pegawai.pegawai_id
                                                      where file.document_id={$value['id']}";
                                                $dataPegawai = $db->getAll($q);
                                                if ($dataPegawai) {
                                                    foreach ($dataPegawai as $i) {
                                                        echo "<li>{$i['nama']}</li>";
                                                    }
                                                }
                                                ?>
                                            </ul>
                                        </td>
                                        <td>
                                            <a href="<?php echo $url . "/detail.php?id=" . $value["id"] ?>">Detail</a>
                                            <a href="<?php echo $url . "/get-name.php?id=" . $value["id"] ?>">Get
                                                Name</a>
                                        </td>
                                    </tr>
                                <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.container-fluid -->
        <?php include($layout . "footer.php") ?>
    </div>
    <!-- /.content-wrapper -->
</div>
<!-- /#wrapper -->
<?php include($layout . "scroll_top.php") ?>
<?php include($layout . "js.php") ?>
</body>

</html>