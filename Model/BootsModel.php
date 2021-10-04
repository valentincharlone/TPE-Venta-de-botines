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

        function insertBoot($modelo, $talle, $precio, $descripcion, $categoria){
            $sentencia = $this->db->prepare("INSERT INTO botin(modelo, talle, precio, descripcion, categoria) VALUES(?, ?, ?, ?, ?)");
            $sentencia->execute(array($modelo, $talle, $precio, $descripcion, $categoria ));
        }
    
    }