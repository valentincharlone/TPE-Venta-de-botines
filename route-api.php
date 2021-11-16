<?php

require_once 'libs\smarty-3.1.39\Router.php';
require_once 'Controller/ApiComentController.php';

// crea el router
$router = new Router();

// define la tabla de ruteo
$router->addRoute('botin/:ID/comentarios', 'GET', 'ApiComentController', 'obtenerComentariosBotin');
$router->addRoute('botin/:ID/comentarios', 'DELETE', 'ApiComentController', 'eliminarComentario');
$router->addRoute('botin/:ID/comentarios', 'POST', 'ApiComentController', 'insertarComentario');



// rutea
$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);