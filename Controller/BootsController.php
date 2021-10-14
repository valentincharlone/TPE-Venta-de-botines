<?php
    require_once "./Model/BootsModel.php";
    require_once "./View/BootsView.php";
    class BootsController {

        private $model;
        private $view;

        function __construct() {
            $this->model = new BootsModel();
            $this->view = new BootsView();
        }

        function showHome(){
            session_start();
            if (!empty($_SESSION['userName'])){
                $this->view->showHome($_SESSION['userName']);
            }
            else {
                $this->view->showHome();
            }
        }
        function filtrar() {
            session_start();
            $marcaFiltro = $this->model->filtro($_POST['marca']);
            if (!empty($_SESSION['userName'])){
           $this->view->showFilterBoots($marcaFiltro, $_SESSION['userName']);
        }
        else {
            $this->view->showFilterBoots($marcaFiltro);
        }
    }
        function allBoots(){
            session_start();
            $boots = $this->model->getBoots();
            $marcas= $this->model->getMarks();
            if (!empty($_SESSION['userName'])){
                  $this->view->showBoots($boots,$marcas, $_SESSION['userName']);
            }
            else {
                $this->view->showBoots($boots, $marcas);
            }
        }

        function viewBoot($id){
            session_start();
            $boot = $this->model->getBoot($id);
            if (!empty($_SESSION['userName'])){
            $this->view->showBoot($boot,  $_SESSION['userName']);
            } 
            else {
                $this->view->showBoot($boot);
            }
        }

        function formBoot(){    
            session_start();
            if (!empty($_SESSION['userName'])){
            $this->view->viewformBoot( $_SESSION['userName']);
            } 
            else {
                $this->view->viewformBoot();
            }
        }
        function insertBoot() {
            $this->model->insertBootFromDB($_POST['modelo'], $_POST['talle'], $_POST['precio'], $_POST['descripcion'], $_POST['categoria'], $_POST['marca']);
            $this->view->showBotinesLocation();
        }
        function deleteBoot($id){
            $this->model->deleteBootFromDB($id);
            $this->view->showBotinesLocation();
        }
        function formUpBoot($id){  
            session_start();
            if (!empty($_SESSION['userName'])) {
            $boot = $this->model->getBoot($id);
            $this->view->viewformUpBoot($id, $_SESSION['userName'],$boot );
            }
            else {
                $this->view->showHomeLocation();
            }
        }

        function updateBoot(){
                $this->model->updateBootsFromDB($_POST['modelo'], $_POST['talle'], $_POST['precio'], $_POST['descripcion'], $_POST['categoria'], $_POST['marca'], $_POST['id_botin']);
                $this->view->showBotinesLocation();
         }

       // MARCAS
       function allMarks() {
        session_start();
        $marcas =$this->model->getMarks();
        if (!empty($_SESSION['userName'])) {
           $this->view->showMarks($marcas, $_SESSION['userName']);
       }
       else {
        $this->view->showMarks($marcas);
       }
    }
    function formUpMark($id) {
        session_start();
        $marcas =$this->model->getMarks();
        $marca = $this->model->getMark($id);
                if (!empty($_SESSION['userName'])) {
                $this->view->viewformUpMark($id, $marca, $_SESSION['userName'], $marcas );
                }
                else {
                    $this->view->showHomeLocation();
                }
            }
    function updateMark() {
        $this->model->updateMarkFromDB($_POST['renameMark'], $_POST['id_marca']);
        $this->view->showMarcasLocation();
    }
    function deleteMark($id){
        $this->model->deleteMarkFromDB($id);
        $this->view->showMarcasLocation();
    }
    function insertMark() {
        $this->model->insertMarkFromDB($_POST['newMark']);
        $this->view->showMarcasLocation();
    }

}
