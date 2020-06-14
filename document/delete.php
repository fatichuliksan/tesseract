<?php
require('../../config/helper.php');
require('../../config/auth.php');
require('../../config/Db.php');

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    if ($_REQUEST['action'] == "DELETE") {
        $db = new Db();
        $db->delete("master_bidang", " where id_master_bidang=" . $_REQUEST["id"]);
    }
}
