<?php
class AdminModel {
private $db;

function __construct(){
    $this->db = new PDO('mysql:host=localhost;'.'dbname=db_botines;charset=utf8', 'root', '');
}
function getUsers() {
    $sentencia = $this->db-> prepare('SELECT * FROM usuario WHERE administrador=0');
    $sentencia->execute();
    $usuarios = $sentencia->fetchAll(PDO::FETCH_OBJ);
    return $usuarios;
}
function deleteUserFromDB($idUsuario) {
    $sentencia = $this->db->prepare("DELETE FROM usuario WHERE id=?");
    $sentencia->execute(array($idUsuario));
}
function doAdminUser($idUsuario) {
    $sentencia = $this->db->prepare('UPDATE usuario SET administrador=1 WHERE id=?');
    $sentencia->execute(array($idUsuario));
}


}