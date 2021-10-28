<?php

    class BootsModel {

        private $db;

        function __construct(){
            $this->db = new PDO('mysql:host=localhost;'.'dbname=db_botines;charset=utf8', 'root', '');
        }
        function filtro($marca) {
                $sentencia = $this->db->prepare("SELECT * FROM botin JOIN marca WHERE botin.id_marca_fk = marca.id_marca AND botin.id_marca_fk = ?");
                $sentencia->execute(array($marca));
                $marcaFiltro = $sentencia->fetchAll(PDO::FETCH_OBJ);
                return $marcaFiltro;
        }

        function getBoots(){
            $sentencia = $this->db->prepare( "SELECT * FROM botin JOIN marca WHERE botin.id_marca_fk = marca.id_marca");
            $sentencia->execute();
            $botines = $sentencia->fetchAll(PDO::FETCH_OBJ);
            return $botines;
        }   
        function getBoot($id){
            $sentencia = $this->db->prepare( "SELECT * FROM botin WHERE id_botin=?");
            $sentencia->execute(array($id));
            $botin = $sentencia->fetch(PDO::FETCH_OBJ);
            return $botin;
        }

        function insertBootFromDB($modelo, $talle, $precio, $descripcion, $categoria,$marca){
            $sentencia = $this->db->prepare("INSERT INTO botin(modelo, talle, precio, descripcion, categoria, id_marca_fk) VALUES(?, ?, ?, ?, ?, ?)");
            $sentencia->execute(array($modelo, $talle, $precio, $descripcion, $categoria, $marca));
        }
        function deleteBootFromDB($id){
            $sentencia = $this->db->prepare("DELETE FROM botin WHERE id_botin=?");
            $sentencia->execute(array($id));
        }
        function updateBootsFromDB($modelo, $talle, $precio, $descripcion, $categoria, $marca, $id){
            $sentencia = $this->db->prepare("UPDATE botin SET modelo=?, talle=?, precio=?, descripcion=?, categoria=?, id_marca_fk=? WHERE id_botin=?");
            $sentencia->execute(array($modelo, $talle, $precio, $descripcion, $categoria, $marca, $id));
        }
        // // MARCAS
        // function getMarks() {
        //     $sentencia = $this->db->prepare("SELECT * FROM marca");
        //     $sentencia->execute();
        //     $marcas = $sentencia->fetchAll(PDO::FETCH_OBJ);
        //     return $marcas;
        // }
        // function getMark($id) {
        //     $sentencia = $this->db->prepare("SELECT * FROM marca WHERE id_marca = ?");
        //     $sentencia->execute(array($id));
        //     $marca = $sentencia->fetch(PDO::FETCH_OBJ);
        //     return $marca;
        // }
        // function updateMarkFromDB($renameMark, $id) {
        //     $sentencia = $this->db->prepare("UPDATE marca SET nombre=? WHERE id_marca = ?");
        //     $sentencia->execute(array($renameMark, $id));
        // }
        // function deleteMarkFromDB($id){
        //     $sentencia = $this->db->prepare("DELETE FROM marca WHERE id_marca=?");
        //     $sentencia->execute(array($id));
        // }
        // function insertMarkFromDB($newMark) {
        //     $sentencia = $this->db->prepare("INSERT INTO marca(nombre) VALUE (?)");
        //     $sentencia->execute(array($newMark));
        // }
    }