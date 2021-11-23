<?php
require_once 'libs/smarty-3.1.39/libs/Smarty.class.php';

class BootsView {

    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
    }
    function showHome($logueado="" , $userEmail = "", $admin="", $fotoPerfil = "") {
        $this->smarty->assign('logueado', $logueado);
        $this ->smarty->assign('userEmail', $userEmail);
        $this->smarty->assign('admin', $admin);
        $this->smarty->assign('fotoPerfil', $fotoPerfil);
        $this->smarty->display('templates/home.tpl');
    }

    function viewformBoot($logueado="" , $userEmail="", $admin="",  $fotoPerfil = "", $marcas) {
        $this->smarty->assign('logueado', $logueado);
        $this ->smarty->assign('userEmail', $userEmail);
        $this->smarty->assign('admin', $admin);
        $this->smarty->assign('fotoPerfil', $fotoPerfil);
        $this->smarty->assign('marcas', $marcas);
        $this->smarty->display('templates/form/createBoot.tpl');
    }
    function viewformUpBoot($logueado="" , $id, $userEmail="", $admin="",$boot, $marcas, $fotoPerfil = ""){
        $this->smarty->assign('logueado', $logueado);
        $this->smarty->assign('id_botin', $id); 
        $this ->smarty->assign('userEmail', $userEmail);
        $this->smarty->assign('boot', $boot);
        $this->smarty->assign('marcas', $marcas);
        $this->smarty->assign('admin', $admin);
        $this->smarty->assign('fotoPerfil', $fotoPerfil);
        $this->smarty->display('templates/form/updateBoot.tpl');
    }

    function showBoots($logueado="" , $boots,$marcas, $userEmail= "", $admin="", $fotoPerfil = "",$bootsData, $pageNumber, $maxPageNumber){
        $this->smarty->assign('titulo', 'Nuestros botines');        
        $this->smarty->assign('logueado', $logueado);
        $this->smarty->assign('boots', $boots);
        $this->smarty->assign('marcas', $marcas);
        $this ->smarty->assign('userEmail', $userEmail);
        $this ->smarty->assign('admin', $admin);
        $this->smarty->assign('fotoPerfil', $fotoPerfil);
        $this ->smarty->assign('$bootsData', $bootsData);
        $this ->smarty->assign('pageNumber', $pageNumber);
        $this ->smarty->assign('maxPageNumber', $maxPageNumber);
        $this->smarty->display('templates/boot/bootsList.tpl');
    }
    function showBoot($id, $logueado="" , $boot, $userEmail = "", $admin="", $fotoPerfil = ""){
        $this->smarty->assign('titulo', 'Descripcion'); 
        $this->smarty->assign('id', $id);
        $this->smarty->assign('logueado', $logueado);
        $this->smarty->assign('boot', $boot);
        $this ->smarty->assign('userEmail', $userEmail);
        $this->smarty->assign('admin', $admin);
        $this->smarty->assign('fotoPerfil', $fotoPerfil);
        $this->smarty->display('templates/boot/bootDetail.tpl');
     }
     function showFilterBoots($logueado="", $marcaFiltro ,$userEmail = "", $admin="", $fotoPerfil = "") {
        $this->smarty->assign('logueado', $logueado);
         $this->smarty->assign('marcaFiltro', $marcaFiltro);
         $this ->smarty->assign('userEmail', $userEmail);
         $this->smarty->assign('admin', $admin);
         $this->smarty->assign('fotoPerfil', $fotoPerfil);
         $this->smarty->display('templates/filtro.tpl');
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