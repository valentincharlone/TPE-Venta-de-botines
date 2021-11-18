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
        $comentarios = $this->model->getComents($id);
        if ($comentarios) {
            return $this->view->response($comentarios, 200);
        }
        else {
            return $this->view->response(null, 404);
        }
    }

    function insertarComentario($params = null) {
        $body = $this->getBody();
        var_dump($body);
        die();
        $ultimoId = $this->model->insertarComentarios($body->id_botin_fk, $body->usuario,$body->fotoPerfil, $body->comentario, $body->puntaje);
        if ($ultimoId) {
            $this->view->response("Comentario realizado con exito en el botin $body->id_botin_fk, tendra el id= $ultimoId", 200);
        }
        else {
            $this->view->response("El comentario en el botin $body->id_botin_fk no se pudo insertar", 500);
        }
    }

    function eliminarComentario($params = null) {
        $idComentario = $params[':ID'];
        $comentario = $this ->model->getComent($idComentario);
        if ($comentario) {
            $this->model->deleteComent($idComentario);
            return $this->view->response("El comentario con el id=$idComentario fue borrada con exito", 200);
        }
        else {
            return $this->view->response("El comentario con el id=$idComentario no existe", 404);
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