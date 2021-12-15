<?php 
//подключение к базе
$server="localhost";
$login="root";
$pass="";
$name_db="dhl_db";
$link= mysqli_connect($server,$login,$pass,$name_db);
//проверка на подключение
if ($link == False)
{
    echo "dont conected";
}
//Инофрмация из формы записывается в переменные
$fio = $_POST['fio'];        
 $email = $_POST['email'];     
 $ct = $_POST['ct'];           
$vp = $_POST['vp'];            
$so = $_POST['so'];            
$gotp = $_POST['gotp'];         
$sp = $_POST['sp'];
$gp = $_POST['gp'];
$massage = $_POST['massage'];
//добавление новых записей в таблицу
$insert_sql = "INSERT INTO orderdhl (fio, email, ct, vp, so, gotp, sp, gp, massage) VALUES ('$fio','$email', '$ct','$vp', '$so', '$gotp', '$sp', '$gp', '$massage')";
$result= mysqli_query($link, $insert_sql);
header('Location:homepage.html');
?>