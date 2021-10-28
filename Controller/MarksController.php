<?php
    require_once "./Model/MarksModel.php";
    require_once "./View/BootsView.php";
    require_once "./Helpers/AuthHelper.php";
    
    class MarksController {
        private $model;
        private $view;
        private $authHelper;

        function __construct() {
            $this->model = new MarksModel();
            $this->view = new BootsView();
            $this->authHelper = new AuthHelper();
        }
        function allMarks() {
        
            $marcas =$this->model->getMarks();
            $logueado = $this->authHelper->checkLoggedIn();
             if($logueado == true){
             if (!empty($_SESSION['userName'])) {
                $this->view->showMarks($logueado, $marcas, $_SESSION['userName']);
             }
             else {
                 $this->view->showMarks($logueado, $marcas);
             }
         }
     }
     function formUpMark($id) {
         
         $marcas =$this->model->getMarks();
         $marca = $this->model->getMark($id);
         $logueado = $this->authHelper->checkLoggedIn();
         if($logueado == true){
             if (!empty($_SESSION['userName'])) {
             $this->view->viewformUpMark($logueado, $id, $marca, $_SESSION['userName'], $marcas );
             }
             else {
                 $this->view->showHomeLocation();
             }
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