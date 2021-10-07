<?php
require_once 'libs/smarty-3.1.39/libs/Smarty.class.php';

class BootsView {

    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
    }
    function showHome() {
        $this->smarty->display('templates/home.tpl');
    }

    function viewformBoot() {
        $this->smarty->display('templates/form/createBoot.tpl');
    }
    function viewformUpBoot($id){
        $this->smarty->assign('id_botin', $id); 
        $this->smarty->display('templates/form/updateBoot.tpl');
    }

    function showBoots($boots){
        $this->smarty->assign('titulo', 'Nuestros botines');        
        $this->smarty->assign('boots', $boots);
        
        $this->smarty->display('templates/boot/bootsList.tpl');
    }
    function showBoot($boot){
        $this->smarty->assign('titulo', 'Descripcion:'); 
        $this->smarty->assign('boot', $boot);
        $this->smarty->display('templates/boot/bootDetail.tpl');
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



}