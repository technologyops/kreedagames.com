<%@ language="vbscript"%>

<% 
game=request.form("game_title")
stremail=request.form("email")
name=request.form("name")
addr=request.form("address_street")
city=request.form("address_city")
state=request.form("address_state")
pin=request.form("address_zip")
phone=request.form("phone1")
message=request.form("comment")
response.write game
response.end
%>
<%
sub sendmail(fromwho,towho,subject,body)
	Dim mymail
	set mymail=server.createObject("cdonts.newmail")
		mymail.from =fromwho
		mymail.to = "gayathri@epagemaker.com"
		'mymail.bcc=""
		'mymail.bcc=""
		mymail.subject = subject
		mymail.body=body
		mymail.BodyFormat = 0 
		mymail.MailFormat = 0 
		mymail.send
		set mymail=nothing
end sub 
%>
<%		
subject ="Online Order from "& name

mess = ""
mess = mess & "<font color=#000080><b>Game Name</b> </font><font color=#006699>:&nbsp;"&game &vbcrlf & "<br>"
mess = mess & "<font color=#000080><b>EMail</b> </font><font color=#006699>:&nbsp;"&stremail&vbcrlf & "<br>"
mess = mess & "<font color=#000080><b>Name</b> </font><font color=#006699>:&nbsp;"&name &vbcrlf & "<br>" 
mess = mess & "<font color=#000080><b>Address</b> </font><font color=#006699>:&nbsp;"&addr &vbcrlf & "<br>"
mess = mess & "<font color=#000080><b>City</b> </font><font color=#006699>:&nbsp;"&city &vbcrlf & "<br>"
mess = mess & "<font color=#000080><b>State</b> </font><font color=#006699>:&nbsp;"&state &vbcrlf & "<br>"
mess = mess & "<font color=#000080><b>Pincode</b> </font><font color=#006699>:&nbsp;"&pin &vbcrlf & "<br>"
mess = mess & "<font color=#000080><b>Telephone No (Resi/Off)</b> </font><font color=#006699>:&nbsp;" &phone &vbcrlf & "<br>"
mess = mess & "<font color=#000080><b>Message </b> </font><font color=#006699>:&nbsp;"&message&vbcrlf & "<br>"
'response.write mess
'response.end

sendmail "www.kreedagames.com","",subject,mess

%>
<% response.redirect "index.html" %>