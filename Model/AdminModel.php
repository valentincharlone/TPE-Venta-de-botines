<?php
class AdminModel {
private $db;

function __construct(){
    $this->db = new PDO('mysql:host=localhost;'.'dbname=db_botines;charset=utf8', 'root', '');
}
    function getUsersNoAdmin($noAdmin) {
        $sentencia = $this->db-> prepare('SELECT * FROM usuario WHERE administrador=?');
        $sentencia->execute(array($noAdmin));
        $usuarios = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $usuarios;
    }
    function getUsersAdmin($admin) {
        $sentencia = $this->db-> prepare('SELECT * FROM usuario WHERE administrador=?');
        $sentencia->execute(array($admin));
        $usuarios = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $usuarios;
    }
    function deleteUserFromDB($idUsuario) {
        $sentencia = $this->db->prepare("DELETE FROM usuario WHERE id=?");
        $sentencia->execute(array($idUsuario));
    }
    function doAdminUser($admin, $idUsuario) {
        $sentencia = $this->db->prepare('UPDATE usuario SET administrador=? WHERE id=?');
        $sentencia->execute(array($admin, $idUsuario));
    }
    function doNormalUser($idUsuario) {
        $sentencia = $this->db->prepare('UPDATE usuario SET administrador=0 WHERE id=?');
        $sentencia->execute(array($idUsuario));
    }
}