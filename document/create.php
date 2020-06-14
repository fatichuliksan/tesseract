<?php
require('../config/helper.php');
require('../config/Db.php');

require '../vendor/autoload.php';

use thiagoalessio\TesseractOCR\TesseractOCR;
$layout = '../layout/';
$url = base_url() . "document";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
//    try {
        $db = new Db();
        $sql = "INSERT INTO documents (title, program_studi_id) VALUES ('" . $_POST["title"] . "', " . $_POST['program_studi_id'] . ")";
        $connection = $db->getConnection();
        $result = $connection->query($sql);
        $target_dir = $_SERVER['DOCUMENT_ROOT'] . "/tesseract/public/upload/";

        if ($result) {
            $insertId = $connection->insert_id;
            $files = $_FILES["files"];
            foreach ($_FILES["files"]["name"] as $index => $name) {
                $target_file = $target_dir . $name;
                if (move_uploaded_file($_FILES["files"]["tmp_name"][$index], $target_file)) {
                    $text =  (new TesseractOCR($target_file))
                        ->tempDir('../temp')
                        ->run();

                    $sql = "INSERT INTO file (document_id, dir, text) VALUES (" . $insertId . ",'" . $name . "', '".$text."')";
                    $result = $connection->query($sql);
                    echo "The file " . basename($_FILES["files"]["name"][$index]) . " has been uploaded.";
                } else {
                    echo "Sorry, there was an error uploading your file.";
                }
            }
            $_SESSION['notifikasi'] = array(
                "type" => "success",
                "message" => "Berhasil disimpan!"
            );
            redirect($url);
        } else {
            $_SESSION['notifikasi'] = array(
                "type" => "error",
                "message" => "Gagal disimpan!"
            );
        }
//    } catch (Exception $e) {
//        $_SESSION['notifikasi'] = array(
//            "type" => "error",
//            "message" => "Gagal disimpan!"
//        );
//    }
}


$db = new Db();
$dataProdi = $db->getAll("select * from program_studi");

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create Document</title>

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
                        Create Document
                    </div>
                    <div class="card-body">
                        <?php include($layout . 'alert.php') ?>
                        <form action="" method="POST" enctype="multipart/form-data">
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Title</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="title" placeholder="Title">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Program Studi</label>
                                <div class="col-sm-10">
                                    <select name="program_studi_id" id="" class="form-control">
                                        <?php foreach ($dataProdi as $i) { ?>
                                            <option value="<?php echo $i["id"] ?>"><?php echo $i["name"] ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Files (image:*.jpg,*.png)</label>
                                <div class="col-sm-10">
                                    <input type="file" multiple class="form-control" name="files[]" placeholder="Files"
                                           accept="image/png, image/jpeg">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label"></label>
                                <div class="col-sm-10">
                                    <button type="submit" class="btn btn-primary">Simpan</button>
                                    <button type="button" class="btn btn-danger" onclick=" window.history.back()">
                                        Kembali
                                    </button>
                                </div>
                            </div>
                        </form>
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