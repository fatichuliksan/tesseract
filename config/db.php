<?php

class Db
{
    private $host = 'localhost:1521/XEPDB1';
    private $username = 'test';
    private $password = 'test';
    private $name = "tesseract";
    private $connection;

    public function __construct()
    {
        $conn = oci_connect($this->username, $this->password, $this->host);
        if (!$conn) {
            $e = oci_error();
            trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
        }

        $this->connection = $conn;

    }

    public function getConnection()
    {
        return $this->connection;
    }

    public function getAll($sql)
    {
        $stid = oci_parse($this->connection, $sql);
        if (oci_execute($stid)) {
            $rows = [];
            $res = oci_fetch_all($stid, $rows);
            $data = [];
            if ($res) {
                foreach ($rows as $index => $row) {
                    foreach ($row as $i => $r) {
                        if ($index == "ID") {
                            array_push($data, [
                                $index => $r
                            ]);
                        } else {
                            $data[$i] = array_merge($data[$i], [
                                $index => $r
                            ]);
                        }

                    }
                }
                return $data;
            } else {
                return [];
            }
        }else{
            var_dump($sql);
            $e = oci_error($this->connection);
        }
    }

    public function getFirst($sql)
    {
        $stid = oci_parse($this->connection, $sql);
        oci_execute($stid);
        $row = oci_fetch($stid, OCI_ASSOC + OCI_RETURN_LOBS);
        if ($row) {
            return $row;
        } else {
            return null;
        }
    }

    public function execute($sql, $executeMode = OCI_COMMIT_ON_SUCCESS)
    {
        $stid = oci_parse($this->connection, $sql);
        if ($stid != false) {
            if (oci_execute($stid, $executeMode)) {
                if (oci_commit($this->connection)) {
                    return true;
                } else {
                    var_dump($sql);
                }
            } else {
                var_dump($sql);
                $e = oci_error($this->connection);
            }
        } else {
            var_dump($sql);
            $e = oci_error($this->connection);
        }
        var_dump($e);
        die();
        return false;
    }
}