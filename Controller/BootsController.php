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
            $this->view->showHome();
            
        }
        function allBoots(){
            $boots = $this->model->getBoots();
            $this->view->showBoots($boots);
        }

        function viewBoot($id){
            $boot = $this->model->getBoot($id);
            $this->view->showBoot($boot);
        }

        function formBoot(){    
            $this->view->viewformBoot();
            
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
            $this->view->viewformUpBoot($id);
        }

        function updateBoot(){
             $this->model->updateBootsFromD($_POST['modelo'], $_POST['talle'], $_POST['precio'], $_POST['descripcion'], $_POST['categoria'], $_POST['marca'], $_POST['id_botin']);
             $this->view->showBotinesLocation();
         }
    
    }
