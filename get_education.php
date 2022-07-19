<?php

//Imports
require_once("conexao.php");

//Get users eduacation_institution array
class GET_EDUCATION{

    public static function get_education_data($user_code){

        //Database Conection
        $con = conexao();

        $get_education  = "SELECT * FROM academic_education WHERE user_code = $user_code";
    
        $get_education_raw_data = $con->query($get_education);
        $results = $get_education_raw_data->fetchAll(PDO::FETCH_ASSOC);
    
        $education_data = array();
    
        foreach($results as $row){
    
            $education = new stdClass();
            $education->eduacation_institution = $row['eduacation_institution'];
            $education_data[] = $education;  
    
        }
    
        return $education_data;

    }

}