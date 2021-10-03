<?php

    class BootsModel {

        private $db;

        function __construct(){
            $this->db = new PDO('mysql:host=localhost;'.'dbname=db_botines;charset=utf8', 'root', '');
        }

        function getBoots(){
            $sentencia = $this->db->prepare( "select * from botin");
            $sentencia->execute();
            $botines = $sentencia->fetch(PDO::FETCH_OBJ);
            return $botines;
        }

        
    }