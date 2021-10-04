<?php
    require_once "Controller/BootsController.php";

    define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

    if (!empty($_GET['action'])) {
        $action = $_GET['action'];
    } else {
        $action = 'home'; // acción por defecto si no envían
    }
    
    $params = explode('/', $action);

    $bootsController = new BootsController(); 

    // determina que camino seguir según la acción
    switch ($params[0]) {
        case 'home': 
            $bootsController->showHome(); 
            break;
        case 'viewBoot':
            $bootsController->viewBoot($params[1]);
            break;
        case 'createBoot': 
            $bootsController->createBoot(); 
            break;
        case 'deleteBoot': 
            $bootsController->deleteBoot($params[1]); 
            break;
         case 'updateteBoot': 
            $bootsController->updateBoot(); 
            break;
        
    }