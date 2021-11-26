<?php
require_once 'libs/smarty-3.1.39/libs/Smarty.class.php';

class UserView  {
    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
    }

    function formLogin($error = "") {
        $this->smarty->assign('titulo', 'Iniciar sesión');
        $this->smarty->assign('error', $error);
        $this->smarty->display('templates/acount/user.tpl');
    }

    function formRegister() {
        $this->smarty->assign('titulo', 'Registrarme');
        $this->smarty->display('templates/acount/register.tpl');
    }

    function showHome($userEmail) {
        $this->smarty->assign('userEmail', $userEmail);
        $this->smarty->display('templates/home.tpl');
    }

    function showHomeLocation() {
        header("Location: " . BASE_URL . "home");
    }
    function showLoginLocation() {
        header("Location: " . BASE_URL . "login");
    }
    function showRegisterLocation() {
        header("Location: " . BASE_URL . "register");
    }
}
