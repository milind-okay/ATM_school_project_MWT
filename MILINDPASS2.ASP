<% @LANGUAGE="VBScript" %>
<% Option Explicit %>
<% ' Setting a connection object
	Dim studCon
	  'Create a connection object.
	  Set studCon = Server.CreateObject("ADODB.Connection")
	  'Open a connection using the OLE DB connection string.
	  studCon.Open  "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Inetpub\wwwroot\MILINDATM\school.mdb"
%>
<%	Dim studRec
	' Creating the recordset object
	Set studRec=Server.CreateObject("ADODB.Recordset")
	studRec.Open "STUDENT", studCon, 1, 3
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
DIM n,PP
Do While Not studRec.EOF
PP=Response.Write(PIN.VALUE)
if PP=P2 then
response.Redirect("P5.asp")
else
response.Redirect("INCA.asp")
end if
studRec.MoveNext
loop
studRec.close
studCon.close
set studRec=nothing
set studRec=nothing
%>
</CENTER>
</BODY></HTML>