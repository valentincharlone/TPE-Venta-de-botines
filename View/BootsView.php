<?php
require_once 'libs/smarty-3.1.39/libs/Smarty.class.php';

class BootsView {

    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
    }
    function showHome($logueado="" , $userEmail = "") {
        $this ->smarty->assign('userEmail', $userEmail);
        $this->smarty->assign('logueado', $logueado);
        $this->smarty->display('templates/home.tpl');
    }

    function viewformBoot($logueado="" , $userEmail="") {
        $this->smarty->assign('logueado', $logueado);
        $this ->smarty->assign('userEmail', $userEmail);
        $this->smarty->display('templates/form/createBoot.tpl');
    }
    function viewformUpBoot($logueado="" , $id, $userEmail="",$boot, $marcas){
        $this->smarty->assign('logueado', $logueado);
        $this->smarty->assign('id_botin', $id); 
        $this ->smarty->assign('userEmail', $userEmail);
        $this->smarty->assign('boot', $boot);
        $this->smarty->assign('marcas', $marcas);
        $this->smarty->display('templates/form/updateBoot.tpl');
    }

    function showBoots($logueado="" , $boots,$marcas, $userEmail= ""){
        $this->smarty->assign('logueado', $logueado);
        $this->smarty->assign('boots', $boots);
        $this->smarty->assign('marcas', $marcas);
        $this ->smarty->assign('userEmail', $userEmail);
        $this->smarty->assign('titulo', 'Nuestros botines');        
        
        $this->smarty->display('templates/boot/bootsList.tpl');
    }
    function showBoot($logueado="" , $boot, $userEmail = ""){
        $this->smarty->assign('logueado', $logueado);
        $this->smarty->assign('boot', $boot);
        $this ->smarty->assign('userEmail', $userEmail);
        $this->smarty->assign('titulo', 'Descripcion'); 
        $this->smarty->display('templates/boot/bootDetail.tpl');
     }
     function showFilterBoots($marcaFiltro ,$userEmail = "") {
         $this->smarty->assign('marcaFiltro', $marcaFiltro);
         $this ->smarty->assign('userEmail', $userEmail);
         $this->smarty->display('templates/filtro.tpl');
     }
//      // MARCAS
// function showMarks($logueado = "", $marcas, $userEmail = "") {
//     $this->smarty->assign('logueado', $logueado);
//     $this->smarty->assign('marcas', $marcas);
//     $this ->smarty->assign('userEmail', $userEmail);
//     $this->smarty->display('templates/marcas.tpl');
// }
// function viewformUpMark($logueado = "", $id,$marca, $userEmail = "", $marcas) {
//     $this->smarty->assign('logueado', $logueado);
//     $this->smarty->assign('id_marca', $id); 
//     $this->smarty->assign('marca', $marca);
//     $this ->smarty->assign('userEmail', $userEmail);
//     $this->smarty->assign('marcas', $marcas);
//     $this->smarty->display('templates/form/updateMark.tpl');
// }

     //
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
    // function showFilter($botines) {
    //     $this->smarty->assign('botines', $botines);
    //     $this->smarty->display('templates/boot/bootsList.tpl');
    // }


}