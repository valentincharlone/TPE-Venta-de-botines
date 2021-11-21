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
    function allUsersNoAdmin() {
        $usuarios = $this->model->getUsersNoAdmin();
        $logueado = $this->authHelper->checkLoggedIn();
        $admin = $this->authHelper->checkAdimn();
        if($logueado && $admin == true){
                $this->view->showUsersNoAdmin($logueado, $_SESSION['userName'], $usuarios, $admin, $_SESSION['fotoPerfil']);
            }
            else {
                $this->view->showLoginLocation();
        }
    }

    function allUsersAdmin() {
        $usuarios = $this->model->getUsersAdmin();
        $logueado = $this->authHelper->checkLoggedIn();
        $admin = $this->authHelper->checkAdimn();
        if($logueado && $admin == true){
                $this->view->showUsersAdmin($logueado, $_SESSION['userName'], $usuarios, $admin, $_SESSION['fotoPerfil']);
            }
            else {
                $this->view->showLoginLocation();
        }
    }

    function deleteUser($idUsuario) {
        $logueado = $this->authHelper->checkLoggedIn();
        if($logueado == true){
                $this->model->deleteUserFromDB($idUsuario);
                $this->view->showUsersNoAdminLocation(); 
        }
    }
    function doAdmin($idUsuario) {
        $logueado = $this->authHelper->checkLoggedIn();
        if($logueado == true){
            $this->model->doAdminUser($idUsuario);
            $this->view->showUsersNoAdminLocation(); 
        }
    }
    function doNormalUser($idUsuario) {
        $logueado = $this->authHelper->checkLoggedIn();
        if($logueado == true){
            $this->model->doNormalUser($idUsuario);
            $this->view->showUsersAdminLocation(); 
        }
    }

    }