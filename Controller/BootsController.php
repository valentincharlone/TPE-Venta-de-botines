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
            if($logueado == true ){
                if (!empty($_SESSION['userName'])){
                    $this->view->showHome($_SESSION['userName']);
                }
                else {
                    $this->view->showHome();
                }
                
            }
        }
        function filtrar() {
            
            $marcaFiltro = $this->model->filtro($_POST['marca']);
            $logueado = $this->authHelper->checkLoggedIn();
            if($logueado == true){
                if (!empty($_SESSION['userName'])){
                $this->view->showFilterBoots($logueado, $marcaFiltro, $_SESSION['userName']);
            }
            else {
                $this->view->showFilterBoots($logueado, $marcaFiltro);
            }
        }
        
    }
        function allBoots(){
            
            $boots = $this->model->getBoots();
            $marcas= $this->marksModel->getMarks();
            $logueado = $this->authHelper->checkLoggedIn();
            if($logueado == true){
                if (!empty($_SESSION['userName'])){
                      $this->view->showBoots($logueado, $boots,$marcas, $_SESSION['userName']);
                }
                else {
                    $this->view->showBoots($logueado, $boots, $marcas);
                }
            }
            

        }

        function viewBoot($id){
            
            $boot = $this->model->getBoot($id);
            $logueado = $this->authHelper->checkLoggedIn();
            if($logueado == true){
                if (!empty($_SESSION['userName'])){
                $this->view->showBoot($logueado, $boot,  $_SESSION['userName']);
                } 
                else {
                    $this->view->showBoot($logueado, $boot);
                }

            }
        }

        function formBoot(){    
            
            $logueado = $this->authHelper->checkLoggedIn();
            if($logueado == true){
                if (!empty($_SESSION['userName'])){
                $this->view->viewformBoot($logueado, $_SESSION['userName']);
                } 
                else {
                    $this->view->viewformBoot($logueado);
                }

            }
        }
        function insertBoot() {
            $logueado = $this->authHelper->checkLoggedIn();
            if($logueado){

                $this->model->insertBootFromDB($_POST['modelo'], $_POST['talle'], $_POST['precio'], $_POST['descripcion'], $_POST['categoria'], $_POST['marca']);
                $this->view->showBotinesLocation();
            }else{
                $this->view->showBotinesLocation();
            }
        }
        function deleteBoot($id){
            $logueado = $this->authHelper->checkLoggedIn();
            if($logueado){
                $this->model->deleteBootFromDB($id);
                $this->view->showBotinesLocation();
            }else{
                $this->view->showBotinesLocation();
            }
        }
        function formUpBoot($id){  
            
            $logueado = $this->authHelper->checkLoggedIn();
            if($logueado == true){
                if (!empty($_SESSION['userName'])) {
                    $marcas= $this->marksModel->getMarks();
                    $boot = $this->model->getBoot($id);
                    $this->view->viewformUpBoot($logueado, $id, $_SESSION['userName'],$boot, $marcas );
                }
                else {
                    $this->view->showHomeLocation();
                }
            }
        }

        function updateBoot(){
            $this->model->updateBootsFromDB($_POST['modelo'], $_POST['talle'], $_POST['precio'], $_POST['descripcion'], $_POST['categoria'], $_POST['marca'], $_POST['id_botin']);
            $this->view->showBotinesLocation();
        }

    //    // MARCAS
    //    function allMarks() {
        
    //        $marcas =$this->model->getMarks();
    //        $logueado = $this->authHelper->checkLoggedIn();
    //         if($logueado == true){
    //         if (!empty($_SESSION['userName'])) {
    //            $this->view->showMarks($logueado, $marcas, $_SESSION['userName']);
    //         }
    //         else {
    //             $this->view->showMarks($logueado, $marcas);
    //         }
    //     }
    // }
    // function formUpMark($id) {
        
    //     $marcas =$this->model->getMarks();
    //     $marca = $this->model->getMark($id);
    //     $logueado = $this->authHelper->checkLoggedIn();
    //     if($logueado == true){
    //         if (!empty($_SESSION['userName'])) {
    //         $this->view->viewformUpMark($logueado, $id, $marca, $_SESSION['userName'], $marcas );
    //         }
    //         else {
    //             $this->view->showHomeLocation();
    //         }
    //     }
    // }
    // function updateMark() {
    //     $this->model->updateMarkFromDB($_POST['renameMark'], $_POST['id_marca']);
    //     $this->view->showMarcasLocation();
    // }
    // function deleteMark($id){
    //     $this->model->deleteMarkFromDB($id);
    //     $this->view->showMarcasLocation();
    // }
    // function insertMark() {
    //     $this->model->insertMarkFromDB($_POST['newMark']);
    //     $this->view->showMarcasLocation();
    // }

}
