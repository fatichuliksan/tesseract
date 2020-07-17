<?php
require('../config/helper.php');
require('../config/Db.php');
require '../vendor/autoload.php';


use thiagoalessio\TesseractOCR\TesseractOCR;

$layout = '../layout/';
$url = base_url() . "document";

$db = new Db();
$connection = $db->getConnection();

$target_dir = $_SERVER['DOCUMENT_ROOT'] . "/tesseract/public/upload/pdf/";
$target_dir_image = $_SERVER['DOCUMENT_ROOT'] . "/tesseract/public/upload/image/";


if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $sql = "INSERT INTO documents (title, program_studi_id) VALUES ('-', 0)";
    $result = $connection->query($sql);
    if ($result) {
        $insertId = $connection->insert_id;
        $title = "";
        foreach ($_FILES["files"]["name"] as $index => $name) {
            $target_file = $target_dir_image . date('YmdHis') . '_' . $name;
            if (move_uploaded_file($_FILES["files"]["tmp_name"][$index], $target_file)) {
                $text = (new TesseractOCR($target_file))
                    ->tempDir('../temp')
                    ->run();

                // cari judul dokumen
                if (empty($title)) {
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
                    if ($finish) {
                        $output = array_slice($res, $start + 1, $finish - $start - 1);
                        $title = implode(" ", $output);
                    }
                }

                $sql = "INSERT INTO file (document_id, dir, text) VALUES (" . $insertId . ",'" . $name . "', '" . $text . "')";
                $result = $connection->query($sql);
                echo "The file " . basename($_FILES["files"]["name"][$index]) . " has been uploaded.";
            } else {
                echo "Sorry, there was an error uploading your file.";
            }
        }

        // update
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
                                <label class="col-sm-2 col-form-label">Files (image)</label>
                                <div class="col-sm-8">
                                    <input type="file" multiple class="form-control" name="files[]" placeholder="Files"
                                           accept="image/jpeg, image/png">
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
                                    <th width="20%"></th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php foreach ($dataDocument as $i => $value) { ?>
                                    <tr>
                                        <td><?php echo $i + 1 ?></td>
                                        <td><?php echo $value['title'] ?></td>
                                        <td>
                                            <a href="<?php echo $url . "/detail.php?id=" . $value["id"] ?>">Detail</a>
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