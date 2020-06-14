<?php
require('./config/helper.php');
require('./config/Db.php');
$layout = './layout';
?>

<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Home</title>

    <?php include $layout . "/css.php" ?>
</head>

<body id="page-top">
<?php include($layout . "/navbar.php") ?>
<div id="wrapper">
    <?php include($layout . "/sidebar.php") ?>
    <div id="content-wrapper">
        <div class="container-fluid">
            <!-- Breadcrumbs-->
            <ol class="breadcrumb">
                <li class="breadcrumb-item active">
                    <a href="#">Home</a>
                </li>
            </ol>
        </div>
        <div class="row">
            <div class="container my-auto">
                <div class="text-center my-auto">
                    <h2>Welcome</h2>
                </div>
            </div>
        </div>
        <!-- /.container-fluid -->
        <?php include($layout . "/footer.php") ?>
    </div>
    <!-- /.content-wrapper -->
</div>
<!-- /#wrapper -->
<?php include($layout . "/scroll_top.php") ?>
<?php include($layout . "/js.php") ?>
</body>

</html>