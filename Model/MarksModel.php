<?php

    class MarksModel {

        private $db;

        function __construct(){
            $this->db = new PDO('mysql:host=localhost;'.'dbname=db_botines;charset=utf8', 'root', '');
        }
        // MARCAS
        function getMarks() {
            $sentencia = $this->db->prepare("SELECT * FROM marca");
            $sentencia->execute();
            $marcas = $sentencia->fetchAll(PDO::FETCH_OBJ);
            return $marcas;
        }
        function getMark($id) {
            $sentencia = $this->db->prepare("SELECT * FROM marca WHERE id_marca = ?");
            $sentencia->execute(array($id));
            $marca = $sentencia->fetch(PDO::FETCH_OBJ);
            return $marca;
        }
        function updateMarkFromDB($renameMark, $id) {
            $sentencia = $this->db->prepare("UPDATE marca SET nombre=? WHERE id_marca = ?");
            $sentencia->execute(array($renameMark, $id));
        }
        function deleteMarkFromDB($id){
            $sentencia = $this->db->prepare("DELETE FROM marca WHERE id_marca=?");
            $sentencia->execute(array($id));
        }
        function insertMarkFromDB($newMark) {
            $sentencia = $this->db->prepare("INSERT INTO marca(nombre) VALUE (?)");
            $sentencia->execute(array($newMark));
        }
    }