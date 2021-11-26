<?php
require_once "./Model/AdminModel.php";
require_once "./View/AdminView.php";
require_once "./Helpers/AuthHelper.php";
class AdminController
{
    private $model;
    private $view;
    private $authHelper;

    function __construct() {
        $this->model = new AdminModel();
        $this->view = new AdminView();
        $this->authHelper = new AuthHelper();
    }

    function allUsersNoAdmin() {
        $noAdmin = 0;
        $usuarios = $this->model->getUsersNoAdmin($noAdmin);
        $logueado = $this->authHelper->checkLoggedIn();
        $admin = $this->authHelper->checkAdimn();
        if ($logueado && $admin) {
            $this->view->showUsersNoAdmin($logueado, $_SESSION['userName'], $usuarios, $admin, $_SESSION['fotoPerfil']);
        } else {
            $this->view->showHomeLocation();
        }
    }
    
    function allUsersAdmin() {
        $Admin = 1;
        $usuarios = $this->model->getUsersAdmin($Admin);
        $logueado = $this->authHelper->checkLoggedIn();
        $admin = $this->authHelper->checkAdimn();
        if ($logueado && $admin) {
            $this->view->showUsersAdmin($logueado, $_SESSION['userName'], $usuarios, $admin, $_SESSION['fotoPerfil']);
        } else {
            $this->view->showHomeLocation();
        }
    }
    
    function deleteUser($idUsuario) {
        $logueado = $this->authHelper->checkLoggedIn();
        $admin = $this->authHelper->checkAdimn();
        if ($logueado && $admin) {
            $this->model->deleteUserFromDB($idUsuario);
            $this->view->showUsersNoAdminLocation();
        }
        else {
            $this->view->showHomeLocation();
        }
    }
    function doAdmin($idUsuario) {
        $Admin = 1;
        $logueado = $this->authHelper->checkLoggedIn();
        $admin = $this->authHelper->checkAdimn();
        if ($logueado && $admin) {
            $this->model->doAdminUser( $Admin, $idUsuario);
            $this->view->showUsersNoAdminLocation();
        }
        else {
            $this->view->showHomeLocation();
        }
    }
    function doNormalUser($idUsuario) {
        $logueado = $this->authHelper->checkLoggedIn();
        if ($logueado) {
            $this->model->doNormalUser($idUsuario);
            $this->view->showUsersAdminLocation();
        }
        else {
            $this->view->showHomeLocation();
        }
    }
}
