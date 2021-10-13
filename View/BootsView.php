<?php
require_once 'libs/smarty-3.1.39/libs/Smarty.class.php';

class BootsView {

    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
    }
    function showHome($userEmail = "") {
        $this ->smarty->assign('userEmail', $userEmail);
        $this->smarty->display('templates/home.tpl');
    }

    function viewformBoot($userEmail) {
        $this ->smarty->assign('userEmail', $userEmail);
        $this->smarty->display('templates/form/createBoot.tpl');
    }
    function viewformUpBoot($id, $userEmail,$boot){
        $this ->smarty->assign('userEmail', $userEmail);
        $this->smarty->assign('boot', $boot);
        $this->smarty->assign('id_botin', $id); 
        $this->smarty->display('templates/form/updateBoot.tpl');
    }

    function showBoots($boots, $userEmail= ""){
        $this ->smarty->assign('userEmail', $userEmail);
        $this->smarty->assign('titulo', 'Nuestros botines');        
        $this->smarty->assign('boots', $boots);
        
        $this->smarty->display('templates/boot/bootsList.tpl');
    }
    function showBoot($boot, $userEmail = ""){
        $this ->smarty->assign('userEmail', $userEmail);
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
    // function showFilter($botines) {
    //     $this->smarty->assign('botines', $botines);
    //     $this->smarty->display('templates/boot/bootsList.tpl');
    // }


}