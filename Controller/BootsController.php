<?php
//aaaa
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
            $boots = $this->model->getBoots();
            $this->view->showBoots($boots);
        }

        function viewBoot($id){
            $boot = $this->model->getBoot($id);
            $this->view->showBoot($boot);
        }

        function createBoot(){    
            $this->model->insertBoot($_POST['modelo'], $_POST['talle'], $_POST['precio'], $_POST['descripcion'], $_POST['categoria'], $_POST['marca']);
            $this->view->showHomeLocation();
        }
        function deleteBoot($id){
            $this->model->deleteBootFromDB($id);
            $this->view->showHomeLocation();
        }

        function updateBoot(){
             $this->model->updateBootsFromDB($_POST['modelo'], $_POST['talle'], $_POST['precio'], $_POST['descripcion'], $_POST['categoria'], $_POST['marca']);
             $this->view->showHomeLocation();
         }
    
    }
