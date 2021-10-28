<?php

class AuthHelper{

    function __construct(){
    }

    function checkLoggedIn(){
        session_start();
        if(isset($_SESSION['username'])){
            return true;
        }
        else{
            return false;
        }   
        
        }
    }

