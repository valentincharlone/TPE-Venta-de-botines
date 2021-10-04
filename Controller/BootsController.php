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
            $boots = $this->model->getBoots();
            $this->view->showBoots($boots);
        }

        function viewBoots($id){
            $boot = $this->model->getBoots($id);
            $this->view->showBoots($boot);
        }

        function createBoot(){
            // if(!isset($_POST['done'])){
            //     $done = 0;
            // }else{
            //     $done = 1;
            // }
    
            $this->model->insertBoot($_POST['modelo'], $_POST['talle'], $_POST['precio'], $_POST['descripcion'], $_POST['categoria']);
            $this->view->showHomeLocation();
        }
    
    }
