<?php
    require_once "./Model/AdminModel.php";
    require_once "./View/AdminView.php";
    require_once "./Helpers/AuthHelper.php";
    class AdminController {
        private $model;
        private $view;
        private $authHelper;

        function __construct() {
            $this->model = new AdminModel();
            $this->view = new AdminView();
            $this->authHelper = new AuthHelper();
        }
    function allUsers() {
        $usuarios = $this->model->getUsers();
        $logueado = $this->authHelper->checkLoggedIn();
        $admin = $this->authHelper->checkAdimn();
        if($logueado && $admin == true){
                $this->view->showUsers($logueado, $_SESSION['userName'], $usuarios, $admin);
            }
            else {
                $this->view->showLoginLocation();
        }
    }
    function deleteUser($idUsuario) {
        $logueado = $this->authHelper->checkLoggedIn();
        if($logueado == true){
                $this->model->deleteUserFromDB($idUsuario);
                $this->view->showUsersLocation(); 
        }
    }
    function doAdmin($idUsuario) {
        $logueado = $this->authHelper->checkLoggedIn();
        if($logueado == true){
            $this->model->doAdminUser($idUsuario);
            $this->view->showUsersLocation(); 
        }
    }


    }