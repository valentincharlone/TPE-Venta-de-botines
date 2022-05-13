<?php
require_once "./Model/MarksModel.php";
require_once "./View/MarksView.php";
require_once "./Helpers/AuthHelper.php";

class MarksController
{
    private $model;
    private $view;
    private $authHelper;

    function __construct() {
        $this->model = new MarksModel();
        $this->view = new MarksView();
        $this->authHelper = new AuthHelper();
    }
    function allMarks() {
        $marcas = $this->model->getMarks();
        $logueado = $this->authHelper->checkLoggedIn();
        $admin = $this->authHelper->checkAdimn();
        if ($logueado && $admin) {
            $this->view->showMarks($logueado, $marcas, $_SESSION['userName'], $admin, $_SESSION['fotoPerfil']);
        } else {
            $this->view->showLoginLocation();
        }
    }
    function formUpMark($id)  {
        $marcas = $this->model->getMarks();
        $marca = $this->model->getMark($id);
        $logueado = $this->authHelper->checkLoggedIn();
        $admin = $this->authHelper->checkAdimn();
        if ($logueado && $admin) {
            $this->view->viewformUpMark($logueado, $id, $marca, $_SESSION['userName'], $marcas, $admin,  $_SESSION['fotoPerfil']);
        } else {
            $this->view->showHomeLocation();
        }
    }
    function updateMark() {
        $logueado = $this->authHelper->checkLoggedIn();
        $admin = $this->authHelper->checkAdimn();
        if ($logueado && $admin ) {
            $this->model->updateMarkFromDB($_POST['renameMark'], $_POST['id_marca']);
            $this->view->showMarcasLocation();
        }
        else {
            $this->view->showHomeLocation();
        }
    }
    function deleteMark($id) {
        $logueado = $this->authHelper->checkLoggedIn();
        $admin = $this->authHelper->checkAdimn();
        if ($logueado && $admin) {
            $this->model->deleteMarkFromDB($id);
            $this->view->showMarcasLocation();
        }
        else {
            $this->view->showHomeLocation();
        }
    }
    function insertMark() {
        $logueado = $this->authHelper->checkLoggedIn();
        $admin = $this->authHelper->checkAdimn();
        if ($logueado && $admin) {
            $this->model->insertMarkFromDB($_POST['newMark']);
            $this->view->showMarcasLocation();
        }
        else {
            $this->view->showHomeLocation();
        }

    }
}
