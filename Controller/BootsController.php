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
        function allBoots(){
            session_start();
            $boots = $this->model->getBoots();
            if (!empty($_SESSION['userName'])){
                $this->view->showBoots($boots,  $_SESSION['userName']);
            }
            else {
                $this->view->showBoots($boots);
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

        //  function filterBoot($dato) {
        //     $botines = $this->model->filterFromDB($dato);
        //      $this->view->showFilter($botines);
        // }
            
    }
