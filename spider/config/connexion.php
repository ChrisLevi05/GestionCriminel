<?php 
    try{
        $bdd = new PDO('mysql:host=localhost;dbname=policebase;charset=utf8',"root","root");
        $bdd -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
    } catch(Exception $e){
        die('Erreur:'.$e->getMessage());
    }
?>