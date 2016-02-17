<html><head><title>ATM</title>
<%
dim c,r,d
set c=Server.CreateObject("ADODB.Connection")
d="Provider=Microsoft.Jet.OLEDB.4.0;DSN=""C:\Inetpub\wwwroot\MILINDATM\atm.accdb"
c.Open d
Set r=Server.CreateObject("ADODB.Recordset")

r.Open "atm1",d,0,1
%>
</head>
<body>

<%
do while not r.EOF
Response.write(r.name)
loop
%>


</BODY></HTML>