<?php

    class BootsModel {

        private $db;

        function __construct(){
            $this->db = new PDO('mysql:host=localhost;'.'dbname=db_botines;charset=utf8', 'root', '');
        }

        function getBoots(){
            $sentencia = $this->db->prepare( "select * from botin");
            $sentencia->execute();
            $botines = $sentencia->fetchAll(PDO::FETCH_OBJ);
            return $botines;
        }   
        function getBoot($id){
            $sentencia = $this->db->prepare( "select * from botin WHERE id_botin=?");
            $sentencia->execute(array($id));
            $botin = $sentencia->fetch(PDO::FETCH_OBJ);
            return $botin;
        }

        function insertBoot($modelo, $talle, $precio, $descripcion, $categoria,$marca){
            $sentencia = $this->db->prepare("INSERT INTO botin(modelo, talle, precio, descripcion, categoria, id_marca_fk) VALUES(?, ?, ?, ?, ?, ?)");
            $sentencia->execute(array($modelo, $talle, $precio, $descripcion, $categoria, $marca));
        }
        function deleteBootFromDB($id){
            $sentencia = $this->db->prepare("DELETE FROM botin WHERE id_botin=?");
            $sentencia->execute(array($id));
        }
        function updateBootsFromDB($modelo, $talle, $precio, $descripcion, $categoria){
            $sentencia = $this->db->prepare("UPDATE botin SET id_botin(modelo, talle, precio, descripcion, categoria) VALUES(?, ?, ?, ?, ?)");
            $sentencia->execute(array($modelo, $talle, $precio, $descripcion, $categoria));
        }
    }