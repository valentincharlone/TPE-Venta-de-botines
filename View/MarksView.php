<?php
require_once 'libs/smarty-3.1.39/libs/Smarty.class.php';

class MarksView {

    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
    }
    // MARCAS
    function showMarks($logueado="", $marcas, $userEmail = "") {
        $this->smarty->assign('logueado', $logueado);
        $this->smarty->assign('marcas', $marcas);
        $this ->smarty->assign('userEmail', $userEmail);
        $this->smarty->display('templates/marcas.tpl');
    }
    function viewformUpMark($logueado="", $id,$marca, $userEmail = "", $marcas) {
        $this->smarty->assign('logueado', $logueado);
        $this->smarty->assign('id_marca', $id); 
        $this->smarty->assign('marca', $marca);
        $this ->smarty->assign('userEmail', $userEmail);
        $this->smarty->assign('marcas', $marcas);
        $this->smarty->display('templates/form/updateMark.tpl');
    }

    function showHomeLocation(){
        header("Location: ".BASE_URL."home");
    }
    function showCreateBootLocation() {
        header("Location: ".BASE_URL."createBoot");
    }
    function showBotinesLocation() {
        header("Location: ".BASE_URL."botines");
    }
    function showMarcasLocation() {
        header("Location: ".BASE_URL."marcas");
    }
}