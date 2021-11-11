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

    function verifyLogin() {
  //Si esta loggeado lo saludo, sino muestro el form de loggeo
  if(!empty($_POST['email']) && !empty($_POST['password'])) {
    $userEmail = $_POST['email'];
    $userPassword = $_POST['password'];
    $user = $this ->model -> checkUserFromDB($userEmail);
    
    //SI el usuario existe y las contraseñas coinciden:
    //con password_verify verificamos si el pass = a el hashing
    if($user && password_verify($userPassword, $user->password)){
      session_start();
      $_SESSION['logueado']=true;
      //dejamos guardado el mail con el que logro entrar
      $_SESSION['username']=$userEmail;
      $_SESSION['userName']=$user->nombre_usuario;
      $_SESSION['administrador']=$user->administrador;
    }
    if (isset($_SESSION['logueado']) && $_SESSION['logueado']== true) {
        $this->view-> showHomeLocation();
    }
    else {
      $this->view->formLogin("usuario o contraseña incorrectos");
    }
    }
  }
  function logOut(){  
    session_start();
    session_destroy();
      $this->view->showHomeLocation();
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