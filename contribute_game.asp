<%@language="vbscript"%>
<%t = request.querystring("t")%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta http-equiv="Content-Language" content="en-us">
<link rel="stylesheet" href="style.css">
<title>Kreeda : Contribute a Game</title>
<script language="javascript">
function doSubmit()
{
title = document.frmgame.title.value;
email = document.frmgame.email.value;
uname = document.frmgame.name.value;
game = document.frmgame.game_posted.value;
birthdayMonth = document.frmgame.birthdayMonth.value;
birthdayDay = document.frmgame.birthdayDay.value;
birthdayYear = document.frmgame.birthdayYear.value;
city = document.frmgame.address_city.value;
state = document.frmgame.address_state.value;
zip = document.frmgame.address_zip.value;
gender = document.frmgame.gender.value;
phone = document.frmgame.phone1.value;
street = document.frmgame.address_street.value;
	if ( (title.length==0) || ( (title.substring(0,1)==" ") && (title.length==1) ) )
	{
	alert("Please Enter Title for the Game");
	document.frmgame.title.focus();
	return false;
	}

elen= email.length;
	efirstchar = email.substring(0, 1);
	elastchar  = email.substring(elen-1, elen);

	atPos = email.indexOf("@",1)	
	if (atPos == -1) 
	{
		alert("Please Enter Valid Email Id");
		document.frmgame.email.focus();
		document.frmgame.email.select();
		return 0;
	}
	if (email.indexOf("@",atPos+1) != -1) 
	{
	alert("Please Enter Valid Email Id");
		document.frmgame.email.focus();
		document.frmgame.email.select(); 
		return 0;
	}
	periodPos = email.indexOf(".",atPos)
	if (periodPos == -1) 
	{	
	alert("Please Enter Valid Email Id");
		document.frmgame.email.focus();
		document.frmgame.email.select();
		return 0;
	}
	if (periodPos+3 > elen)	
	{ alert("Please Enter Valid Email Id");
		document.frmgame.email.focus();
		document.frmgame.email.select();
		return 0;
	}
	if (email.indexOf("..",1) != -1)
	 {
	alert("Please Enter Valid Email Id");
		document.frmgame.email.focus();
		document.frmgame.email.select();
		return 0;
	}
	if (email.indexOf("@.",1) != -1) {
	alert("Please Enter Valid Email Id");
		document.frmgame.email.focus();
		document.frmgame.email.select();
		return 0;
	}
	if (email.indexOf(".@",1) != -1)
	 {
	 alert("Please Enter Valid Email Id");
		document.frmgame.email.focus();
		document.frmgame.email.select();
		return 0;
	}
if (email.indexOf("-@",1) != -1)
	 {
	 alert("Please Enter Valid Email Id");
		document.frmgame.email.focus();
		document.frmgame.email.select();
		return 0;
	}
if (email.indexOf("@-",1) != -1)
	 {
	 alert("Please Enter Valid Email Id");
		document.frmgame.email.focus();
		document.frmgame.email.select();
		return 0;
	}
if (email.indexOf("-.",1) != -1)
	 {
	 alert("Please Enter Valid Email Id");
		document.frmgame.email.focus();
		document.frmgame.email.select();
		return 0;
	}
if (email.indexOf(".-",1) != -1)
	 {
	 alert("Please Enter Valid Email Id");
		document.frmgame.email.focus();
		document.frmgame.email.select();
		return 0;
	}
if (email.indexOf("--",1) != -1)
	 {
	 alert("Please Enter Valid Email Id");
		document.frmgame.email.focus();
		document.frmgame.email.select();
		return 0;
	}        
if((efirstchar<"a" || efirstchar>"z") && (efirstchar<"A" || efirstchar>"Z"))
	{
	alert("Please Enter Valid Email Id");
		document.frmgame.email.focus();
		document.frmgame.email.select();
		return 0;
	}

	if((elastchar<"a" || elastchar>"z") && (elastchar<"A" || elastchar>"Z"))
	{
		alert("Please Enter Valid Email Id");
		document.frmgame.email.focus();
		document.frmgame.email.select();	
		return 0;
	}

    	for (var i = 1; i < elen; i++)
		{
		var ch = email.substring(i, i + 1);
		if ( ((ch < "a" || "z" < ch) && (ch < "A" || "Z" < ch)) && (ch < "0" || "9" < ch) && (ch != '_') && (ch != "@") && (ch != ".") && (ch !="-"))
		{	
			alert("Please Enter Valid Email Id");
		document.frmgame.email.focus();
		document.frmgame.email.select();
			return 0;
		}
		}


	if ( (uname.length==0) || ( (uname.substring(0,1)==" ") && (uname.length==1) ) )
	{
	alert("Please Enter Your Name");
	document.frmgame.name.focus();
	return false;
	}
	if ( (game.length==0) || ( (game.substring(0,1)==" ") && (game.length==1) ) )
	{
	alert("Please Enter Your Game");
	document.frmgame.game_posted.focus();
	return false;
	}
	if(document.frmgame.no_newsletter.type == "checkbox")
	{
	if(document.frmgame.no_newsletter.checked == true)
	document.frmgame.newsletter.value="chkd"
	}
document.frmgame.submit();
}
</script>
</head>

<body topmargin="0" leftmargin="0">
<table border="0" cellpadding="0" cellspacing="0" width="779">
  <tr>
    <td width="10"><img border="0" src="spacer.gif" width="1" height="1"></td>
    <td width="130" valign="top">
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
          <td width="100%" height="68"><img border="0" src="spacer.gif" width="1" height="1"></td>
        </tr>
        <tr>
          <td width="100%" align="center"><a href="index.html"><img border="0" src="kreeda.gif" width="130" height="73" alt="Home"></a></td>
        </tr>
        <tr>
          <td width="100%" height="20"><img border="0" src="spacer.gif" width="1" height="1"></td>
        </tr>
        <tr>
          <td width="100%" align="right"><img border="0" src="art_leaves.gif" alt="Kreeda" width="35" height="220"></td>
        </tr>
      </table>
    </td>
    <td width="499" valign="top">
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
          <td width="100%" height="20"><img border="0" src="spacer.gif" width="1" height="1"></td>
        </tr>
        <tr>
          <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
              <tr>
                <td width="75" height="48"><img border="0" src="spacer.gif" width="1" height="1"></td>
                <td width="75" height="48"></td>
                <td width="75" height="48"><img border="0" src="spacer.gif" width="1" height="1"></td>
                <td width="124" height="109" rowspan="2" class="bginter" align="center"><img border="0" src="interaction_top_active.gif" alt="Interaction" width="109" height="109"></td>
                <td width="75" height="48"><img border="0" src="spacer.gif" width="1" height="1"></td>
                <td width="75" height="48"><img border="0" src="spacer.gif" width="1" height="1"></td>
              </tr>
              <tr>
                <td width="75" height="61" class="bgwork"><a href="research.html"><img border="0" src="our_work_top.gif" width="61" height="61" alt="Our Work"></a></td>
                <td width="75" class="bgwhy" height="61"><a href="why_play.html"><img border="0" src="why_games_top.gif" alt="Why Games" width="61" height="61"></a></td>
                <td width="75" class="bgabout" height="61"><a href="about_us.html"><img border="0" src="about_us_top.gif" width="61" height="61" alt="About Us"></a></td>
                <td width="75" height="61" class="bgpurchase"><a href="purchase_games.html"><img border="0" src="purchase_games_top.gif" width="61" height="61" alt="Purchase Games"></a></td>
                <td width="75" height="61" class="bggames"><a href="games.html"><img border="0" src="games_top.gif" width="61" height="61" alt="Games"></a></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td width="100%">
          
          <table border="0" cellpadding="10" cellspacing="0" width="100%">
            <tr>
              <td width="100%" class="bginter">
              
              
               <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <tr>
        <td width="100%">
          <table border="0" cellpadding="0" width="100%" cellspacing="0">
            <tr>
              <td width="50%" class="top_inter" onmouseout="this.className='top_inter'" onmouseover="this.className='top_inter_active'"><a href="contribute_exp.asp" class="top_inter">Contribute
                an Experience</a></td>              <td width="1" class="line"><img border="0" src="spacer.gif" width="1" height="1"></td>
                              <td width="50%" class="top_inter_active">Contribute a
                                Game</td>
            </tr>
          </table>
        </td>
      </tr>
      <tr>
        <td width="100%" class="line" height="1"><img border="0" src="spacer.gif"></td>
      </tr>
      <tr>
        <td width="100%">
           
    <table border="0" cellpadding="5" cellspacing="5" width="100%">
      <tr>
        <td width="100%" class="inter_title">Contribute a Game</td>
      </tr>
      <script language="javascript">
      if (location.href.indexOf("?")>-1)
      document.write('<tr><td width="100%" class="inter_title"><font color="#982E19">Thank you for your submission&nbsp;</font></td></tr>')
      </script>
      <tr>
        <td width="100%" class="content">At Kreeda, we look forward to your
          contribution in revival of old games. Do feel free to contact
          us.&nbsp;</td>
      </tr>
      <tr>
        <td width="100%" class="inter_content">
        <form name="frmgame" method="post" action="http://www.e-pagemaker.com/kreeda/mailgame.asp">
                        <input type="hidden" name="newsletter">
        <table border="0" cellpadding="4" cellspacing="1" width="100%" bgcolor="#FFFFFF">
            <tr>
              <td width="50%" class="form_content" style="background-color: #F1EADC">Title for the Game <font color="#FF0000">*</font></td>
              <td width="50%" bgcolor="#F1EADC"><input type="text" name="title" size="30"></td>
            </tr>
            <tr>
              <td width="50%" class="form_content" style="background-color: #F1EADC">Email address <font color="#FF0000">*</font></td>
              <td width="50%" bgcolor="#F1EADC"><input type="text" name="email" size="30"></td>
            </tr>
            <tr>
              <td width="50%" class="form_content" style="background-color: #F1EADC">Name <font color="#FF0000">*</font></td>
              <td width="50%" bgcolor="#F1EADC"><input type="text" name="name" size="30"></td>
            </tr>
           <tr>
              <td width="50%" class="form_content" style="background-color: #F1EADC">Your Game <font color="#FF0000">*</font></td>
              <td width="50%" bgcolor="#F1EADC"><textarea rows="2" name="game_posted" cols="23"></textarea></td>
            </tr>
 <tr>
              <td width="50%" class="form_content" style="background-color: #F1EADC">D.O.B</td>
              <td width="50%" bgcolor="#F1EADC"><select name="birthdayMonth" size="1">
<option value="Not Given">MON</option>
<option value="January">Jan</option>
<option value="February">Feb</option>
<option value="March">Mar</option>
<option value="April">Apr</option>
<option value="May">May</option>
<option value="June">Jun</option>
<option value="July">Jul</option>
<option value="August">Aug</option>
<option value="September">Sep</option>
<option value="October">Oct</option>
<option value="November">Nov</option>
<option value="December">Dec</option>
</select>&nbsp;<b>/</b>&nbsp;<select name="birthdayDay" size="1">
<option value="Not Given">DAY</option>
<script language="javascript">
for (var i=1;i<=31;i++) 
document.write("<option value="+i+">"+i+"</option>")
</script>
</select>&nbsp;<b>/</b>&nbsp;<select name="birthdayYear" size="1">
<option value="Not Given">YEAR</option>
<script language="javascript">
for (var i=1950;i<=new Date().getYear()-2;i++) 
document.write("<option value="+i+">"+i+"</option>")
</script>
</select></td>
            </tr>            
            <tr>
              <td width="50%" class="form_content" style="background-color: #F1EADC">City</td>
              <td width="50%" bgcolor="#F1EADC"><input type="text" name="address_city" size="30" value=""></td>
            </tr>
            <tr>
              <td width="50%" class="form_content" style="background-color: #F1EADC">State</td>
              <td width="50%" bgcolor="#F1EADC"><input type="text" name="address_state" size="30"></td>
            </tr>
            <tr>
              <td width="50%" class="form_content" style="background-color: #F1EADC">Zip Code</td>
              <td width="50%" bgcolor="#F1EADC"><input type="text" name="address_zip" size="30"></td>
            </tr>
            <tr>
              <td width="50%" class="form_content" style="background-color: #F1EADC">Gender</td>
              <td width="50%" bgcolor="#F1EADC"><SELECT NAME="gender">
<option value="Not Given">Click to choose</option>
<option value="Male">Male</option>
<option value="Female">Female</option>
</select></td>
            </tr>
            <tr>
              <td width="50%" class="form_content" style="background-color: #F1EADC">Phone</td>
              <td width="50%" bgcolor="#F1EADC"><input type="text" name="phone1" size="30"></td>
            </tr>
            <tr>
              <td width="50%" class="form_content" style="background-color: #F1EADC">Address for communication</td>
              <td width="50%" bgcolor="#F1EADC"><textarea rows="2" name="address_street" cols="23"></textarea></td>
            </tr>
            <tr>
              <td width="100%" colspan="2" class="form_content" style="background-color: #F1EADC"><B>
              <INPUT TYPE="checkbox" NAME="no_newsletter" VALUE="no newsletter">
                </B>Click here if you prefer not to receive newsletters or special offers.</td>
            </tr>
            <tr>
              <td width="100%" colspan="2" class="form_content" style="background-color: #F1EADC"><font color="#FF0000">*
                marked fields are mandatory.</font></td>
            </tr>
            <tr>
              <td width="100%" colspan="2" align="center"><INPUT TYPE="button" NAME="pbsubmit" VALUE="Submit" onclick="doSubmit()">
                <INPUT TYPE="reset" NAME="reset" VALUE="Reset Form"></td>
            </tr>
          </table>

        </td>
      </tr>
    </table>
        </td>
      </tr>
    </table>
              
              
              </td>
            </tr>
          </table>
          
          
          </td>
        </tr>
      </table>
    </td>
    <td width="140"><img border="0" src="spacer.gif" width="1" height="1"></td>
  </tr>  <tr>
    <td width="784" colspan="7" align="center" class="copyright">© Copyright
      Kreeda™, All rights reserved.&nbsp;<br>
      Designed &amp; Developed by <a href="http://www.e-pagemaker.com" target="_blank"> <font class="epagemaker"><b> ePagemaker</b></font></a><font class="epagemaker"><b></b></font></td>
  </tr>
</table>
</form>       
</body>

</html>