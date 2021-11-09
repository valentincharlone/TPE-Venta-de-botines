<?php
require_once 'libs/smarty-3.1.39/libs/Smarty.class.php';

class AdminView {

    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
    }

    function showUsers($logueado="" , $userEmail = "", $usuarios, $admin) {
        $this->smarty->assign('titulo', 'Lista de usuarios:');
        $this ->smarty->assign('userEmail', $userEmail);
        $this->smarty->assign('logueado', $logueado);
        $this->smarty->assign('usuarios', $usuarios);      
        $this->smarty->assign('admin', $admin);   
        $this->smarty->display('templates/admin/users.tpl');
}
    function showLoginLocation() {
        header("Location: ".BASE_URL."login");
    }
    function showUsersLocation() {
        header("Location: ".BASE_URL."usuarios");
    }
}