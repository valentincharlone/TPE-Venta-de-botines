<?php
require_once 'libs/smarty-3.1.39/libs/Smarty.class.php';

class AdminView  {

    private $smarty;

    function __construct()  {
        $this->smarty = new Smarty();
    }

    function showUsersNoAdmin($logueado = "", $userEmail = "", $usuarios, $admin, $fotoPerfil = "")  {
        $this->smarty->assign('titulo', 'Lista de usuarios:');
        $this->smarty->assign('userEmail', $userEmail);
        $this->smarty->assign('logueado', $logueado);
        $this->smarty->assign('usuarios', $usuarios);
        $this->smarty->assign('admin', $admin);
        $this->smarty->assign('fotoPerfil', $fotoPerfil);
        $this->smarty->display('templates/admin/noAdmin.tpl');
    }

    function showUsersAdmin($logueado = "", $userEmail = "", $usuarios, $admin, $fotoPerfil = "")  {
        $this->smarty->assign('titulo', 'Lista de Administradores:');
        $this->smarty->assign('userEmail', $userEmail);
        $this->smarty->assign('logueado', $logueado);
        $this->smarty->assign('usuarios', $usuarios);
        $this->smarty->assign('admin', $admin);
        $this->smarty->assign('fotoPerfil', $fotoPerfil);
        $this->smarty->display('templates/admin/admin.tpl');
    }

    function showLoginLocation() {
        header("Location: " . BASE_URL . "login");
    }
    function showUsersNoAdminLocation() {
        header("Location: " . BASE_URL . "noadministradores");
    }
    function showUsersAdminLocation() {
        header("Location: " . BASE_URL . "administradores");
    }
    function showHomeLocation(){
        header("Location: ".BASE_URL."home");
    }
}
