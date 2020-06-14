<?php

class Db {
    private $host="localhost";
    private $username="root";
    private $password="";
    private $name="tesseract";
    private $connection;

    public function __construct()
    {
        $this->connection =  new mysqli($this->host,  $this->username,  $this->password, $this->name);
    }

    public function getConnection(){
        return $this->connection;
    }

    public function getAll($sql){
        if ($result = $this->connection->query($sql)) {
            $obj = $result ->fetch_all(MYSQLI_ASSOC);
            $result -> free_result();
            return $obj;
        }
        return null;
    }

    public function getFirst($sql){
        if ($result = $this->connection->query($sql)) {
            $obj = $result -> fetch_array();
            $result -> free_result();
            return $obj;
        }
        return null;
    }

}