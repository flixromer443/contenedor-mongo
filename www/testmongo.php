<?php
require 'vendor/autoload.php'; // incluir Composer

$cliente = new MongoDB\Client("mongodb://root:rootpassword@mongodb:27017");
$coleccion = $cliente->Arturnito->Users;
$password = sha1("123456");
$insertday = date("Y/m/d");

$resultado = $coleccion->insertOne( [ 'FirstName' => 'Enrique', 'LastName' => 'Lopez', 'Email' => 'fabian.lopez@gmail.com', 'Role' => 'User', 'LastName' => 'Lopez', 'Password' => $password , 'Insert_date' => $insertday ] );

echo "Registro insertado con el Object ID '{$resultado->getInsertedId()}'";

$cursor =$coleccion->find();

foreach ($cursor as $obj) {

   echo $obj['FirstName'].'|'.$obj['LastName'].'|'.$obj['Email'].'|'.$obj['Password'].'|'.'<br>';

}
$usr_email="prof.fabian.lopez@gmail.com";
$usr_password="123456";

$qry = array("Email" => $usr_email,"Password" => sha1($usr_password));
//var_dump($qry);
$result = $coleccion->findOne($qry);
//var_dump($result);
if($result){
echo '<script language="javascript">';
echo 'alert("Usuario Registrado")';
echo '</script>';

// Resto del codigo para avanzar....
}
else {
echo '<script language="javascript">';
echo 'alert("Usuario No Registrado")';
echo '</script>';
} 
?>