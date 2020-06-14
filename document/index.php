<?php
require('../config/helper.php');
require('../config/Db.php');


$layout = '../layout/';
$url = base_url() . "document";

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
                        <a href="<?php echo $url . "/create.php" ?>"
                           class="btn btn-outline-primary btn-default float-right">Create</a>
                    </div>
                    <div class="card-body">
                        <?php include($layout . 'alert.php') ?>
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th width="5%">No.</th>
                                    <th>Title</th>
                                    <th  width="20%"></th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php foreach ($dataDocument as $i => $value) { ?>
                                    <tr>
                                        <td><?php echo $i + 1 ?></td>
                                        <td><?php echo $value['title'] ?></td>
                                        <td>
                                            <a href="<?php echo $url . "/detail.php?id=" . $value["id"] ?>">Detail</a>
                                            <a href="<?php echo $url . "/edit.php?id=" . $value["id"] ?>">Edit</a>
                                            <a href="javascript:void(0)"
                                               onclick="hapus('<?php echo $url . '/delete.php?id=' . $value['id'] ?>')">Hapus</a>
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