<?

include("includes/PHPUtilities.php");
$util = new PHPUtilities();
$retu = $util->sendMail("Govind","govind@epagemaker.com","Thozha","thozha@gmail.com","New Registration","Welcome to NCF India interface",false);
echo $retu;


?>
