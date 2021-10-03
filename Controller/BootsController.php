<?php

    require_once "./Model/BootsModel.php";
    require_once "./View/BootsView.php";
    
    echo "hola";

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
    }
