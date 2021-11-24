<?php
    require_once "./Model/BootsModel.php";
    require_once "./Model/MarksModel.php";
    require_once "./View/BootsView.php";
    require_once "./Helpers/AuthHelper.php";
    class BootsController {

        private $model;
        private $marksModel;
        private $view;
        private $authHelper;

        function __construct() {
            $this->model = new BootsModel();
            $this->marksModel = new MarksModel();
            $this->view = new BootsView();
            $this->authHelper = new AuthHelper();
        }

        function showHome(){
            $logueado = $this->authHelper->checkLoggedIn();
            $admin = $this->authHelper->checkAdimn();
            if($logueado){
                    $this->view->showHome($logueado, $_SESSION['userName'], $admin, $_SESSION['fotoPerfil']);
                }
                else {
                    $this->view->showHome();            
            }
        }
        function filtrar() {            
            $marcaFiltro = $this->model->filtro($_POST['marca']);
            $logueado = $this->authHelper->checkLoggedIn();
            $admin = $this->authHelper->checkAdimn();
            if($logueado){
                $this->view->showFilterBoots($logueado, $marcaFiltro, $_SESSION['userName'], $admin, $_SESSION['fotoPerfil']);
            }
            else {
                $this->view->showFilterBoots($logueado, $marcaFiltro);
        } 
    }
        function allBoots($page, $npag){       
            $limit = 9;    
            $offset = ($npag - 1) * $limit; 
            $bootsCount= $this->model->getAllBoots();
            $bootsData = $this->model->getBootsPaginacion($offset, $limit);
            $maxPageNum = ($bootsCount / $limit);
            $marcas= $this->marksModel->getMarks();
            $logueado = $this->authHelper->checkLoggedIn();
            $admin = $this->authHelper->checkAdimn();

            if($logueado) {
                      $this->view->showBoots($logueado, $bootsData, $marcas, $_SESSION['userName'], $admin, $_SESSION['fotoPerfil'],$bootsData, $npag, $maxPageNum);
                }
                else {
                    $this->view->showBoots($logueado, $bootsData, $marcas, $limit, $admin, $offset,$bootsData, $npag, $maxPageNum);
            }
        }

        function viewBoot($id){
            $boot = $this->model->getBoot($id);
            $logueado = $this->authHelper->checkLoggedIn();
            $admin = $this->authHelper->checkAdimn();
            $fecha = date("Y-m-d H:i:s");
            if ($boot) {
                if($logueado){
                    $this->view->showBoot($id, $logueado, $boot,  $_SESSION['userName'], $admin, $_SESSION['fotoPerfil'], $fecha);
                } 
                else {
                    $this->view->showBoot($id, $logueado, $boot, $fecha);
                }
            }
            else {
                $this->view->showBotinesLocation();
            }
        }

        function formBoot(){    
            $marcas= $this->marksModel->getMarks();
            $logueado = $this->authHelper->checkLoggedIn();
            $admin = $this->authHelper->checkAdimn();
            if($logueado && $admin){
                $this->view->viewformBoot($logueado, $_SESSION['userName'], $admin, $_SESSION['fotoPerfil'], $marcas);
                } 
                else {
                    $this->view->showHomeLocation();
                }
        }
        function insertBoot() {
            $logueado = $this->authHelper->checkLoggedIn();
            $admin = $this->authHelper->checkAdimn();
            if($logueado && $admin) {
                if(!empty($_FILES['input_name']['tmp_name']) && !empty($_POST['modelo']) && !empty($_POST['talle']) && !empty($_POST['precio']) && !empty($_POST['descripcion']) && !empty($_POST['categoria']) && !empty($_POST['marca'])){
                    if($_FILES['input_name']['type'] == "image/jpg" || $_FILES['input_name']['type'] == "image/jpeg" || $_FILES['input_name']['type'] == "image/png") {
                    $this->model->insertBootFromDB($_POST['modelo'], $_POST['talle'], $_POST['precio'], $_POST['descripcion'], $_POST['categoria'], $_POST['marca'], $_FILES['input_name']['tmp_name']);
                    $this->view->showBotinesLocation();
                    }
                }
                else {
                    $this->view->showCreateBootLocation();
                }
            }else{
                $this->view->showBotinesLocation();
            }
        }
        function deleteBoot($id){
            $logueado = $this->authHelper->checkLoggedIn();
            $admin = $this->authHelper->checkAdimn();
            if($logueado && $admin){
                $this->model->deleteBootFromDB($id);
                $this->view->showBotinesLocation();
            }else{
                $this->view->showBotinesLocation();
            }
        }
        function formUpBoot($id){  
            $logueado = $this->authHelper->checkLoggedIn();
            $admin = $this->authHelper->checkAdimn();
            if($logueado && $admin){
                $marcas= $this->marksModel->getMarks();
                $boot = $this->model->getBoot($id);
                $this->view->viewformUpBoot($logueado, $id, $_SESSION['userName'], $admin,$boot, $marcas );
            }
            else {
                $this->view->showHomeLocation();
            }
        }
        
        function updateBoot(){
            $logueado = $this->authHelper->checkLoggedIn();
            $admin = $this->authHelper->checkAdimn();
            if($logueado && $admin){
               if(!empty($_FILES['input_name']['tmp_name']) && !empty($_POST['modelo']) && !empty($_POST['talle']) && !empty($_POST['precio']) && !empty($_POST['descripcion']) && !empty($_POST['categoria']) && !empty($_POST['marca'])){
                 if($_FILES['input_name']['type'] == "image/jpg" || $_FILES['input_name']['type'] == "image/jpeg" || $_FILES['input_name']['type'] == "image/png") {
                    $this->model->updateBootsFromDB( $_POST['modelo'], $_POST['talle'], $_POST['precio'], $_POST['descripcion'], $_POST['marca'],$_POST['categoria'], $_FILES['input_name']['tmp_name'],$_POST['id_botin']);
                    $this->view->showBotinesLocation();
            }
        }
            else {
                $this->view->showBotinesLocation();
            }
        }
            else {
                $this->view->showHomeLocation();
            }
        }
}
