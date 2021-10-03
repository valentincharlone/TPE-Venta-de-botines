<?php
require_once './libs/smarty-3.1.39/libs/Smarty.class.php';

class BootsView {

    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
    }

    function showBoots($boots){
        $this->smarty->assign('titulo', 'Nuestros botines');        
        $this->smarty->assign('boots', $boots);
        $this->smarty->display('templates/bootsList.tpl');
    }


}