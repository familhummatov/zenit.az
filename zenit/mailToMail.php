<?php 
require_once "db_config.php";

 $from=$_POST['clientEmail'];
 $to='djeffcbbrl@gmail.com';
 $name=$_POST['name'];
 $surName=$_POST['surName'];
 $message=$_POST['message'];
 $phoneNumber=$_POST['prefix'].$_POST['phoneNumber'];

$insertClient=$db->prepare("INSERT INTO contactclients (name,surname,email,phoneNumber,message) VALUES(?,?,?,?,?)");
$insertClient->execute([

	$name,
	$surName,
	$from,
	$phoneNumber,
	$message

]);

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'vendor/phpmailer/phpmailer/src/Exception.php';
require 'vendor/phpmailer/phpmailer/src/PHPMailer.php';
require 'vendor/phpmailer/phpmailer/src/SMTP.php';





	// mail Function
$mail=new PHPMailer;
$mail->From=$from;
$mail->FromName=$name." ".$surName;
$mail->addAddress($to);
$mail->addReplyTo($to,"Reply: ");
$mail->isHTML(true);
$mail->SMTPDebug=1;
$mail->isSMTP();
$mail->Host = "smtp.hostinger.com";
$mail->SMTPAuth = true;   
$mail->Username = 'contact@zenit.az';
$mail->Password = "123321abcABCcamalniyi19851987";
$mail->SMTPSecure = "tls";
$mail->Port = 587;
$mail->Body = "<i>".$message."</i>";
if(!$mail->send()) 
{
     echo "Mailer Error: " . $mail->ErrorInfo;
} 
else 
{
      "Message has been sent successfully";
}





?>