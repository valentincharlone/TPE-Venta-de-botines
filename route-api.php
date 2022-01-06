<?php

require_once 'libs\smarty-3.1.39\Router.php';
require_once 'Controller/ApiComentController.php';

// crea el router
$router = new Router();

// define la tabla de ruteo
$router->addRoute('comentarios/botin/:ID', 'GET', 'ApiComentController', 'obtenerComentariosBotin');
// iria :('comentarios/botin/:ID/ordenPuntaje/:ORDEN'
$router->addRoute('comentarios/botin/:ID/:ORDEN', 'GET', 'ApiComentController', 'obtenerComentariosBotinOrdenados');
// ('comentarios/botin/:ID/puntaje/:PUNTAJE'
$router->addRoute('coments/botin/:ID/:PUNTAJE', 'GET', 'ApiComentController', 'obtenerComentariosBotinPorEstrellas');
// ('comentarios/botin/:ID/fecha/:ORDEN'
$router->addRoute('comentss/botin/:ID/:ORDEN', 'GET', 'ApiComentController', 'obtenerComentariosBotinPorDia');

$router->addRoute('comentarios/botin/:ID', 'POST', 'ApiComentController', 'insertarComentario');
$router->addRoute('comentarios/:ID', 'DELETE', 'ApiComentController', 'eliminarComentario');




// rutea
$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);
