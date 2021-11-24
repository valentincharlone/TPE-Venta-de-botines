<?php
require_once "./Model/ApiModel.php";
require_once "./View/ApiView.php";
require_once "./Helpers/AuthHelper.php";



class ApiComentController{

    private $model;
    private $view;
    private $authHelper;

    function __construct(){
        $this->model = new ApiModel();
        $this->view = new ApiView();
        $this->authHelper = new AuthHelper();
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
    function obtenerComentariosBotinOrdenados($params = null){
        $id= $params[":ID"];
        $orden = $params[":ORDEN"];
        if ($orden == "ASC" OR $orden=="DESC") {
            $comentarios = $this->model->getComentsOrder($id, $orden);
            if ($comentarios) {
                return $this->view->response($comentarios, 200);
            }
            else {
                return $this->view->response("el botin con id $id no tiene comentarios", 404);
            }
        }
    }
    function obtenerComentariosBotinPorEstrellas($params = null){
        $id= $params[":ID"];
        $puntaje = $params[":PUNTAJE"];
        if(($puntaje>=1)&&($puntaje<=5)){
            $comentarios = $this->model->getComentsStars($id, $puntaje);
            if ($comentarios) {
                return $this->view->response($comentarios, 200);
            }
            else {
                return $this->view->response("el botin con id $id no tiene comentarios con $puntaje estrellas", 404);
            }
        }
    }

    function obtenerComentariosBotinPorDia($params = null){
        $id= $params[":ID"];
        $orden= $params[":ORDEN"];
        
            $comentarios = $this->model->getComentsDate($id, $orden);
            if ($comentarios) {
                return $this->view->response($comentarios, 200);
            }
            else {
                return $this->view->response("el botin con id $id no tiene comentarios con fecha", 404);
            }
    }

    function insertarComentario($params = null) {
        $logueado = $this->authHelper->checkLoggedIn();
        if($logueado){
        $body = $this->getBody();
        $fecha = date("Y-m-d H:i:s");
        if (!empty($body->comentario) && !empty($body->puntaje)) {
            $ultimoId = $this->model->insertarComentarios($body->id_botin_fk, $body->usuario,$body->comentario, $body->puntaje,$body->fotoPerfil, $fecha);
            if ($ultimoId) {
                $this->view->response("Comentario realizado con exito en el botin $body->id_botin_fk, la fecha $fecha, tendra el id= $ultimoId", 200);
            }
            else {
                $this->view->response("El comentario en el botin $body->id_botin_fk no se pudo insertar", 500);
            }
        }
     }
    }

    function eliminarComentario($params = null) {
        $admin = $this->authHelper->checkAdimn();
        $idComentario = $params[':ID'];
        if($admin){
        $comentario = $this ->model->getComent($idComentario);
        if ($comentario) {
            $this->model->deleteComent($idComentario);
            return $this->view->response("El comentario con el id=$idComentario fue borrada con exito", 200);
        }
        else {
            return $this->view->response("El comentario con el id=$idComentario no existe", 404);
        }
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