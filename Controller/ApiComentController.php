<?php
require_once "./Model/ApiModel.php";
require_once "./View/ApiView.php";


class ApiComentController{

    private $model;
    private $view;

    function __construct(){
        $this->model = new ApiModel();
        $this->view = new ApiView();
    }
    function obtenerComentariosBotin($params = null){
        $id= $params[":ID"];
        var_dump($id);
        die();
        $comentarios = $this->model->getComents($id);
        if ($comentarios) {
            return $this->view->response($comentarios, 200);
        }
        else {
            return $this->view->response(null, 404);
        }
    }
    
    

 // Devuelve el body del request
 private function getBody() {
    //trae lo que le mandaron en el body
   $bodyString = file_get_contents("php://input");
   //te devuelve el string en tipo objeto
   return json_decode($bodyString);
}
}