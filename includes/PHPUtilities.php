<?php
/*
				File Name		:	PHPUtilities.php
				Created by		:	Govind amd Hamza
				Created Date	:	12/10/2003
				Description	:	This page contains a class PHPUtilities has funtions to send mails and replace ' with ''.
*/
class PHPUtilities
{
	function sendMail($strFromName,$strFromAddress,$strToName,$strToAddress,$strMailSubject,$strMailBody,$isHtml)
	{
		//@$strHeaders .= "From: ".$strFromName." <".$strFromAddress.">\r\n"; 
		@$strHeaders .= "From: ".$strFromAddress."\r\n"; 
		$strHeaders .= "MIME-Version: 1.0\r\n";

		if($isHtml)
		{
			$strHeaders .= "Content-type: text/html; charset=iso-8859-1\r\n";
			//Mail in HTML Format
		}
		else
		{
			$strHeaders .= "Content-type: text/plain; charset=iso-8859-1\r\n"; 
			//Mail in Plain text format
		}
	
		if(mail($strToAddress, $strMailSubject, $strMailBody, $strHeaders))
			return "success";
		else
			return "fail";
		//Mail Sent
	}
	
	function getDateProper($strMysqlDate)
	{
	 	if(strlen($strMysqlDate)==10){
	 	$strMysqlDate = explode("-",$strMysqlDate);
		$strProperDate = $strMysqlDate[2]."/".$strMysqlDate[1]."/".$strMysqlDate[0]; 
		return $strProperDate;
		}
		else
		{
			return $strMysqlDate;
		}
	}
	
	function appendSingleQuote($strInputString)
	{
		$strInputString = str_replace("'","''",$strInputString);
		return $strInputString;
	}
	
	
	/*   
	
	
How's the my encryption algorithm work:

First it will generate an encryption key with
the string you supply:

	Key 1 will be equal to the numerical value
	of each character in your crypt key.
	
	Key 2 will be equal to the length of your
	crypt key.

For each character in the string you wish to
encrypt, it will do the following mathematical
calculations, where V is the final value of the encoded
character and C is the value of the character
currently encrypting:

	V = C * Key1
	V = V + Key2

It will then separate each character in the original
string with a character between 65 and 90 (cap. letters).

To decrypt the string, it will do the opposite
calculations, where V is the final value of the decrypted
character and C is the value of the encrypted character:

	V = V / Key1
	V = C – Key2 */

/* -----------------------------------------------
   @Name: Encrypt()
   @Args: $txt-> String to encrypt.
   @Args: $CRYPT_KEY -> String used to generate a encryption key.
   @Returns: $estr -> Encrypted string.
  ----------------------------------------------- */

	function encrypt($txt){
		$CRYPT_KEY="30djsk";
		if (!$txt && $txt != "0"){
			return false;
			exit;
		}
		
		if (!$CRYPT_KEY){
			return false;
			exit;
		}
		
		$kv = keyvalue($CRYPT_KEY);
		$estr = "";
		$enc = "";

    	for ($i=0; $i<strlen($txt); $i++) {
			$e = ord(substr($txt, $i, 1));
			$e = $e + $kv[1];
			$e = $e * $kv[2];
			(double)microtime()*1000000;
			$rstr = chr(rand(65, 90));
			$estr .= "$rstr$e";
		}

		return $estr;
	}

/* -----------------------------------------------
   @Name: Decrypt()
   @Args: $txt-> String to decrypt.
   @Args: $CRYPT_KEY -> String used to encrypt the string.
   @Returns: $estr -> Decrypted string.
  ----------------------------------------------- */
	
	function decrypt($txt){
		$CRYPT_KEY="30djsk";
		if (!$txt && $txt != "0"){
			return false;
			exit;
		}
		
		if (!$CRYPT_KEY){
			return false;
			exit;
		}
		
		$kv = keyvalue($CRYPT_KEY);
		$estr = "";
		$tmp = "";

		for ($i=0; $i<strlen($txt); $i++) {
			if ( ord(substr($txt, $i, 1)) > 64 && ord(substr($txt, $i, 1)) < 91 ) {
				if ($tmp != "") {
					$tmp = $tmp / $kv[2];
					$tmp = $tmp - $kv[1];
					$estr .= chr($tmp);
					$tmp = "";
				}
			} else {
				$tmp .= substr($txt, $i, 1);
			}
		}

					$tmp = $tmp / $kv[2];
					$tmp = $tmp - $kv[1];
		$estr .= chr($tmp);

		return $estr;
	}

	function encryptpassword($txt){
		$CRYPT_KEY="30djsk";
		if (!$txt && $txt != "0"){
			return false;
			exit;
		}
		
		if (!$CRYPT_KEY){
			return false;
			exit;
		}
		
		$kv = keyvalue($CRYPT_KEY);
		$estr = "";
		$enc = "";

    	for ($i=0; $i<strlen($txt); $i++) {
			$e = ord(substr($txt, $i, 1));
			$e = $e + $kv[1];
			$e = $e * $kv[2];
			(double)microtime()*1000000;
			$rstr = chr(rand(65, 90));
			$estr .= "$rstr$e";
		}

		return $estr;
	}

	function decryptpassword($txt){
		$CRYPT_KEY="30djsk";
		if (!$txt && $txt != "0"){
			return false;
			exit;
		}
		
		if (!$CRYPT_KEY){
			return false;
			exit;
		}
		
		$kv = keyvalue($CRYPT_KEY);
		$estr = "";
		$tmp = "";

		for ($i=0; $i<strlen($txt); $i++) {
			if ( ord(substr($txt, $i, 1)) > 64 && ord(substr($txt, $i, 1)) < 91 ) {
				if ($tmp != "") {
					$tmp = $tmp / $kv[2];
					$tmp = $tmp - $kv[1];
					$estr .= chr($tmp);
					$tmp = "";
				}
			} else {
				$tmp .= substr($txt, $i, 1);
			}
		}

					$tmp = $tmp / $kv[2];
					$tmp = $tmp - $kv[1];
		$estr .= chr($tmp);

		return $estr;
	}
//-------------------------------------------------------------------------------------------------

	
};


/* -----------------------------------------------
   @Name: keyvalue()
   @Args: $CRYPT_KEY -> String used to generate a encryption key.
   @Returns: $keyvalue -> Array containing 2 encryption keys.
  ----------------------------------------------- */
	
	function keyvalue($CRYPT_KEY){
	$keyvalue = "";
	$keyvalue[1] = "0";
	$keyvalue[2] = "0";
	for ($i=1; $i<strlen($CRYPT_KEY); $i++) {
		$curchr = ord(substr($CRYPT_KEY, $i, 1));
		$keyvalue[1] = $keyvalue[1] + $curchr;
		$keyvalue[2] = strlen($CRYPT_KEY);
	}
		return $keyvalue;
	}

?>
