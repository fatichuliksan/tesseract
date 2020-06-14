<?php
session_start();
error_reporting(-1);
date_default_timezone_set("Asia/Jakarta");

function base_url()
{
    $local_url = 'http://localhost/tesseract/';
    return  $local_url ? $local_url : $_SERVER['SERVER_NAME'];
}

function redirect($url = "")
{
    HEADER("location:" .  $url);
    die();
}

function redirectBack()
{
    header('Location: ' . $_SERVER['HTTP_REFERER']);
    die();
}
