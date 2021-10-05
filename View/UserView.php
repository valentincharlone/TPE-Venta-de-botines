<?php
require_once 'libs/smarty-3.1.39/libs/Smarty.class.php';

class UserView {
    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
    }

    function showLogin($error = ""){
        $this->smarty->assign('titulo', 'Log In');
        $this->smarty->assign('error', $error);
        $this->smarty->display('templates/user.tpl');
    }

}