<?php

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: Content-Type");
header('Access-Control-Allow-Methods: GET, POST, DELETE');

//Imports
require_once("conexao.php");
require_once("get_education.php");
require_once("get_professional_experience.php");

//Database Conection
$con = conexao();

//Request DATA
$request_type = $_SERVER['REQUEST_METHOD'];


//GET users DATA
if ($request_type == 'GET') {
    
    $get_users = "SELECT * FROM users";
    
    $users_raw_data = $con->query($get_users);
    $results = $users_raw_data->fetchAll(PDO::FETCH_ASSOC);

    $users_data = array();

    foreach($results as $row){

        $user = new stdClass();
        $user->code = $row['code'];
        $user->name = $row['name'];
        $user->phone = $row['phone'];
        $user->email = $row['email'];
        $xp_data = GET_PROFESSIONAL_EXP::get_data($user->code);
        $education_data = GET_EDUCATION::get_education_data($user->code);
        $user->education = $education_data;
        $user->xp = $xp_data;
        $users_data[] = $user;  

    }

    echo json_encode($users_data);

}

//POST request create a new user
if ($request_type == 'POST') {

    $_POST = json_decode(file_get_contents('php://input'), true);

    $null_fields = false;

    if (!isset($_POST['jsonData']['name']) or
        !isset($_POST['jsonData']['password'])or
        !isset($_POST['jsonData']['user_name'])) 
    {
        $null_fields = true;
    }

    if ($null_fields == true) {
        $error = array();
        http_response_code(401);
        $error['message'] = 'Os campos nome, email, senha ou telefone são obrigatórios';
        echo json_encode($error, JSON_FORCE_OBJECT | JSON_UNESCAPED_UNICODE);
        exit;
    }

    if(!isset($_POST['jsonData']['email'])or
    !isset($_POST['jsonData']['phone'])){

        $error = array();
        http_response_code(401);
        $error['message'] = 'Um dos campos deve ser preenchido email ou telefone';
        echo json_encode($error, JSON_FORCE_OBJECT | JSON_UNESCAPED_UNICODE);
        exit;

    }

    if($_POST['jsonData']['email'] == null and $_POST['jsonData']['phone'] == null){

        $error = array();
        http_response_code(401);
        $error['message'] = 'Um dos campos deve ser preenchido email ou telefone';
        echo json_encode($error, JSON_FORCE_OBJECT | JSON_UNESCAPED_UNICODE);
        exit;

    }

        $password_hash = password_hash($_POST['jsonData']['password'],PASSWORD_DEFAULT);

        if (isset($_POST['jsonData']['xp']) and $_POST['jsonData']['xp'] != null) {
            $con->query("INSERT INTO users
            (name,password, email, user_name,
            phone) 
            VALUES ('{$_POST['jsonData']['name']}',
            '$password_hash', '{$_POST['jsonData']['email']}', '{$_POST['jsonData']['user_name']}', '{$_POST['jsonData']['phone']}')");
        }
    
        $con->query("INSERT INTO users
        (name,password, email, user_name,
        phone) 
        VALUES ('{$_POST['jsonData']['name']}',
        '$password_hash', '{$_POST['jsonData']['email']}', '{$_POST['jsonData']['user_name']}', '{$_POST['jsonData']['phone']}')");
        $last_id = $con->lastInsertId();

        if (isset($_POST['jsonData']['xp']) and $_POST['jsonData']['xp'] != null) {

            $con->query("INSERT INTO professional_experiences
            (professional_experience,user_code) 
            VALUES ('{$_POST['jsonData']['xp']}',
            '$last_id')");

        }
        if (isset($_POST['jsonData']['academic'])and $_POST['jsonData']['academic'] != null) {
            
            $con->query("INSERT INTO academic_education
            (eduacation_institution,user_code) 
            VALUES ('{$_POST['jsonData']['academic']}',
            '$last_id')");

        }

        http_response_code(200);
        $success = array();
        $success['message'] = "Cadastro realizado com sucesso";
        echo json_encode($success, JSON_FORCE_OBJECT | JSON_UNESCAPED_UNICODE);

   
}

//DELETE user DATA
if ($request_type == 'DELETE') {

    if (!isset($_GET['user_code']) or $_GET['user_code'] == null) {

        $error = array();
        http_response_code(401);
        $error['message'] = 'Campo id é necessário para deletar';
        echo json_encode($error, JSON_FORCE_OBJECT | JSON_UNESCAPED_UNICODE);
        exit;
    }

    $user_code = $_GET['user_code'];
    $sql = "DELETE FROM users WHERE code = '{$user_code}' ";

    $stmt = $con->query($sql);

    http_response_code(200);
    $success = array();
    $success['message'] = "Usuario Deletado";
    echo json_encode($success, JSON_FORCE_OBJECT | JSON_UNESCAPED_UNICODE);

}
