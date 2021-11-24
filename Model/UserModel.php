<?php
class UserModel  {
    private $db;

    function __construct() {
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=db_botines;charset=utf8', 'root', '');
    }

    function insertUserFromDB($nombre, $apellido, $nombre_usuario, $userEmail, $userPassword, $fotoPerfil = null) {
        $pathImg = null;
        if ($fotoPerfil) {
            $pathImg = $this->uploadImage($fotoPerfil);
            $sentencia = $this->db->prepare("INSERT INTO usuario(nombre, apellido, nombre_usuario, email, password, fotoPerfil) VALUES(?,?,?,?,?,?)");
            $sentencia->execute(array($nombre, $apellido, $nombre_usuario, $userEmail, $userPassword, $pathImg));
        }
    }

    private function uploadImage($fotoPerfil) {
        $target = 'img/fotosPerfil/' . uniqid() . '.jpg';
        move_uploaded_file($fotoPerfil, $target);
        return $target;
    }

    function checkUserFromDB($userEmail) {
        $sentencia = $this->db->prepare('SELECT * FROM usuario WHERE email=?');
        $sentencia->execute([$userEmail]);
        $user = $sentencia->fetch(PDO::FETCH_OBJ);
        return $user;
    }
}
