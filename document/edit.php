<?php
require('../../config/helper.php');
require('../../config/auth.php');
require('../../config/Db.php');


$layout = '../../layout/';
$url = base_url() . "master/bidang";

if ($_REQUEST["id"]) {
    $db = new Db();
    $data = $db->getFirst("select * from master_bidang where id_master_bidang=" . $_REQUEST["id"]);
} else {
    redirectBack();
}

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    try {
        $db = new Db();
        $db->update("master_bidang", array("label" => $_POST["label"]), " where id_master_bidang=" . $_REQUEST["id"]);
        $_SESSION['notifikasi'] = array(
            "type" => "success",
            "message" => "Berhasil disimpan!"
        );
        redirect($url);
    } catch (Exception $e) {
        $_SESSION['notifikasi'] = array(
            "type" => "error",
            "message" => "Gagal disimpan!"
        );
    }
}

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Edit Bidang</title>

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
                        Master
                    </li>
                    <li class="breadcrumb-item active">
                        Bidang
                    </li>
                </ol>
            </div>
            <div class="row">
                <div class="container my-auto">
                    <div class="card mb-3">
                        <div class="card-header">
                            Edit Bidang
                        </div>
                        <div class="card-body">
                            <?php include($layout . 'alert.php') ?>
                            <form action="" method="POST">
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Nama Bidang</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="label" value="<?php echo $data["LABEL"] ?>" placeholder="Nama Bidang">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label"></label>
                                    <div class="col-sm-10">
                                        <button type="submit" class="btn btn-primary">Simpan</button>
                                        <button type="button" class="btn btn-danger" onclick=" window.history.back()">Kembali</button>
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