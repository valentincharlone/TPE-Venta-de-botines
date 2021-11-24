<?php

class ApiModel  {

    private $db;
    function __construct() {
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=db_botines;charset=utf8', 'root', '');
    }

    function getComents($id) {
        $sentencia = $this->db->prepare("SELECT * FROM comentario WHERE id_botin_fk = ?");
        $sentencia->execute(array($id));
        $comentarios = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $comentarios;
    }
    function getComentsOrder($id, $orden) {
        $sentencia = $this->db->prepare("SELECT * FROM comentario WHERE id_botin_fk=? ORDER BY puntaje $orden");
        $sentencia->execute(array($id));
        $comentarios = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $comentarios;
    }

    function getComentsStars($id, $puntaje) {
        $sentencia = $this->db->prepare("SELECT * FROM comentario WHERE id_botin_fk=? AND puntaje =?");
        $sentencia->execute(array($id, $puntaje));
        $comentarios = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $comentarios;
    }

    function getComentsDate($id, $orden) {
        $sentencia = $this->db->prepare("SELECT * FROM comentario WHERE id_botin_fk=? ORDER BY  id $orden");
        $sentencia->execute(array($id));
        $comentarios = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $comentarios;
    }

    function getComent($idComentario) {
        $sentencia = $this->db->prepare("select * from comentario WHERE id=?");
        $sentencia->execute(array($idComentario));
        $comentario = $sentencia->fetch(PDO::FETCH_OBJ);
        return $comentario;
    }

    function insertarComentarios($id_botin_fk, $usuario, $comentario, $puntaje, $fotoPerfil, $fecha) {
        $sentencia = $this->db->prepare("INSERT INTO comentario (id_botin_fk, usuario, comentario, puntaje, fotoPerfil, fecha) VALUES(?,?,?,?,?,?)");
        $sentencia->execute(array($id_botin_fk, $usuario, $comentario, $puntaje, $fotoPerfil, $fecha));
        return $this->db->lastInsertId();
    }

    function deleteComent($idComentario) {
        $sentencia = $this->db->prepare("DELETE FROM comentario WHERE id=?");
        $sentencia->execute(array($idComentario));
    }
}
