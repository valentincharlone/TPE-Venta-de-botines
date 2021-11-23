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
        function getAllBoots(){
            $sentencia = $this->db->prepare( "SELECT * FROM botin JOIN marca WHERE botin.id_marca_fk = marca.id_marca");
            $sentencia->execute();
            $botines = $sentencia->fetchAll(PDO::FETCH_OBJ);
            return count($botines);
        }   

        function getBootsPaginacion($offset, $limit){
            $sentencia = $this->db->prepare( "SELECT * FROM botin JOIN marca WHERE botin.id_marca_fk = marca.id_marca LIMIT $offset,$limit");
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
        function deleteBootFromDB($id){
            $sentencia = $this->db->prepare("DELETE FROM botin WHERE id_botin=?");
            $sentencia->execute(array($id));
        }

        function insertBootFromDB($modelo, $talle, $precio, $descripcion, $categoria,$marca, $imagen = null){
            $pathImg = null;
            if ($imagen){
                $pathImg = $this->uploadImage($imagen);
                $sentencia = $this->db->prepare("INSERT INTO botin(modelo, talle, precio, descripcion, categoria, id_marca_fk, imagen) VALUES(?, ?, ?, ?, ?, ?, ?)");
                $sentencia->execute(array($modelo, $talle, $precio, $descripcion, $categoria, $marca, $pathImg));
            }
        }
          
        function updateBootsFromDB( $modelo, $talle, $precio, $descripcion, $marca, $categoria, $imagen = null, $id){
            $pathImg = null;
            if ($imagen){
                $pathImg = $this->uploadImage($imagen);
                $sentencia = $this->db->prepare("UPDATE botin SET modelo=?, talle=?, precio=?, descripcion=?, id_marca_fk=?, categoria=?, imagen=?  WHERE id_botin=?");
                $sentencia->execute(array($modelo, $talle, $precio, $descripcion, $marca, $categoria, $pathImg, $id));
            }
        }
        private function uploadImage($imagen) {
            $target = 'img/botines/' . uniqid() . '.jpg';
            move_uploaded_file($imagen, $target);
            return $target;
        }
    }