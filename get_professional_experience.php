<?php

//Imports
require_once("conexao.php");

//Get users professional_experiences array
class GET_PROFESSIONAL_EXP{
    

    public static function get_data($user_code){

        //Database Conection
        $con = conexao();

        $get_xp  = "SELECT * FROM professional_experiences WHERE user_code = $user_code";
    
        $xp_raw_data = $con->query($get_xp);
        $results = $xp_raw_data->fetchAll(PDO::FETCH_ASSOC);
    
        $xp_data = array();
    
        foreach($results as $row){
    
            $xp = new stdClass();
            $xp->professional_experience = $row['professional_experience'];
            $xp_data[] = $xp;  
    
        }
    
        return $xp_data;

    }

}