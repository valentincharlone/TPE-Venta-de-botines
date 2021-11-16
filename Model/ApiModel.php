<?php

class ApiModel{

    private $db;
    function __construct(){
         $this->db = new PDO('mysql:host=localhost;'.'dbname=db_botines;charset=utf8', 'root', '');
    }
function getComents($id) {
    $sentencia = $this->db->prepare( "SELECT * FROM comentario WHERE comentario.id_botin_fk = ?");
    $sentencia->execute(array($id));
    $comentarios = $sentencia->fetchAll(PDO::FETCH_OBJ);
    return $comentarios;
}

}