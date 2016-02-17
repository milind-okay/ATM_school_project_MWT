<html><head><title>ATM</title>


</head>
<body Background="B2.jpg"><IMG SRC="MM.bmp" NAME="H" WIDTH="68" height="68" BORDER="0" ALT="logo" align="left">
<CENTER><hr color="orange" ><FONT COLOR="WHITE" size="10"> KENDRIA VIDYALAYA <br>BANK of INDIA</FONT><hr color="orange" ><br>
<hr color="orange" >
<br><br>

if (not(isnumeric(Request.Form("t1")))) then
msgbox"error! you must enter in numeric form"
end if 



if (not(isnumeric(Request.Form("t2")))) then
msgbox"error! you must enter in numeric form"
end if 

<%
dim P,P2
P=12
response.buffer
P2=Request.Form("t2")
P1=Request.Form("t1")
if Isnumeric(p2)  then
response.write"welcome"
else
response.Redirect("P3.asp")
end if %>

<%if Isnumeric(p1)  then
response.write"welcome"
else
response.Redirect("P5.asp")
end if %>
<%
if P2="12" then
response.Redirect("P5.asp")
else
response.Redirect("P6.asp")
end if

%>
select trancation

</CENTER>
</BODY></HTML>