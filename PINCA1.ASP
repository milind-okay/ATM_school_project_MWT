<% @LANGUAGE="VBScript" %>
<% Option Explicit %>
<% 
Dim C
	  Set C = Server.CreateObject("ADODB.Connection")
	  C.Open  "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Inetpub\wwwroot\MILINDATM\atm2003.mdb"
%>
<%	Dim R
	Set R=Server.CreateObject("ADODB.Recordset")
	R.Open "MILINDACC", C, 2, 2
%>
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
dim I,I2,I1

response.buffer
I1=Request.Form("t2")
I=Request.Form("t1")
I2=Request.Form("t3")
%>
<%
if Isnumeric(I)  then
response.write"welcome"
else
response.Redirect("INnopin.asp")
end if %>

<%if Isnumeric(I1)  then
response.write"welcome"
else
response.Redirect("INcardno.asp")
end if %>

<%if Isnumeric(I2)  then
response.write"welcome"
else
response.Redirect("INcardno.asp")
end if %>
<%
if I1 = I2 Then
response.write"welcome"
else
response.Redirect("PINnotm.asp")
end if 
%>
<%
DIM Z
Z=0
Do until R.EOF or Z=1
if Cint(R("PIN")) = Cint(I)Then
z = 1
Exit Do
Else
R.MoveNext
End if
loop
if z = 1 Then
R("PIN") = Cint(I2)
R.UpDate
else
response.Redirect("PINnotm.asp")
end if %>

</CENTER>
</BODY></HTML>