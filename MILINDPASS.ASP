<% @LANGUAGE="VBScript" %>
<% Option Explicit %>
<% 
Dim C
	  Set C = Server.CreateObject("ADODB.Connection")
	  C.Open  "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Inetpub\wwwroot\MILINDATM\atm2003.mdb"
%>
<%	Dim R
	Set R=Server.CreateObject("ADODB.Recordset")
	R.Open "MILINDACC", C, 2, 3
%>
<html><head><title>ATM</title>
</head>
<body Background="B2.jpg"><IMG SRC="MM.bmp" NAME="H" WIDTH="68" height="68" BORDER="0" ALT="logo" align="left">
<CENTER><hr color="orange" ><FONT COLOR="WHITE" size="10"> KENDRIA VIDYALAYA <br>BANK of INDIA</FONT><hr color="orange" ><br>
<hr color="orange" >
<br><br>
<%
dim P,P2,p1
P=12
response.buffer
P2=Request.Form("t2")
P1=Request.Form("t1")
%>
<%if Isnumeric(P1)  then
response.write"welcome"
else
response.Redirect("INcardno.asp")
end if %>
<%
if Isnumeric(P2)  then
response.write"welcome"
else
response.Redirect("INnopin.asp")
end if %>

<%
DIM Z
Z=0
Do until R.EOF or Z=1
if Cint(R("PIN")) = Cint(P2) Then
z = 1
Exit Do
Else
R.MoveNext
End if
loop
if z = 1 Then
response.write"welcome"
else
response.Redirect("INCA.asp")
end if %>


<%
DIM m
m=0
Do until R.EOF or m=1
if R("CARDNO") = P1 Then
m = 1
Exit Do
Else
R.MoveNext
End if
loop
if m = 1 Then
response.Redirect("P5.asp")
else
response.Redirect("INCA.asp")
end if %>


<%
R.close
C.close
set R=nothing
set C=nothing
%>
</CENTER>
</BODY></HTML>