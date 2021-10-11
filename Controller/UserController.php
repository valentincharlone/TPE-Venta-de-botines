<?php
  require_once "./Model/UserModel.php";
  require_once "./View/UserView.php";

  class UserController {
    private $model;
    private $view;

    function __construct(){
        $this->model = new UserModel();
        $this->view = new UserView();
    }
    function login() {
        $this->view->formLogin();
    }
    function access() {
      session_start();
      if (session_start() == true) {
        $this->view->showHome( $_SESSION['username']);
      }

  //Si esta loggeado lo saludo, sino muestro el form de loggeo
    if (isset($_SESSION['logueado']) && $_SESSION['logueado']== true) {
        $this->view->showHome( $_SESSION['username']);
    }
      if(!empty($_POST['email']) && !empty($_POST['password'])) {
        $userEmail = $_POST['email'];
        $userPassword = $_POST['password'];
        $user = $this ->model -> checkUserFromDB($userEmail);
        //SI el usuario existe y las contraseñas coinciden:
    //con password_verify verificamos si el pass = a el hashing
    if($user && password_verify($userPassword, $user->password)){
      $_SESSION['logueado']=true;
      //dejamos guardado el mail con el que logro entrar
      $_SESSION['username']=$userEmail;
    }
    else {
      $this->view->showHomeLocation();
    }
    }
  }
    function register() {
      $this->view->formRegister();
    }
    function insertRegister() {
      if(!empty($_POST['nombre']) && !empty ($_POST['apellido']) && !empty($_POST['nombre_usuario']) && !empty($_POST['email']) && !empty($_POST['password'])) {
        $nombre = $_POST['nombre'];
        $apellido = $_POST['apellido'];
        $nombre_usuario = $_POST['nombre_usuario'];
        $userEmail = $_POST['email'];
        $userPassword = password_hash($_POST['password'], PASSWORD_BCRYPT);
        $this->model->insertUserFromDB($nombre, $apellido, $nombre_usuario, $userEmail, $userPassword);
      }
      $this->view->showHomeLocation();
  
  }

  }