<% @LANGUAGE="VBScript" %>

<% 
Dim C
	  Set C = Server.CreateObject("ADODB.Connection")
	  C.Open  "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Inetpub\wwwroot\MILINDATM\atm2003.mdb"
%>
<%	Dim R
	Set R=Server.CreateObject("ADODB.Recordset")
	R.Open "MILINDACC", C, 2, 2
%>
<% LastAccessTime=Request.Cookies("LastTime") %>
<% LastAccessDate=Request.Cookies("LastDate")%>
<%
If (Request.Cookies("NumVisits")="") then
Response.Cookies("NumVisits")=0
else
Response.Cookies("NumVisits") = Request.Cookies("NumVisits")+1
End If
%>
<%Response.Cookies("LastDate")=Date%>
<%Response.Cookies("LastTime")=Time%>
<html><head><title>ATM</title></head><body>






<%
dim y
response.buffer
y=Request.Form("t12")
if Isnumeric(y)  then
response.write"welcome"
else
response.Redirect("INnopin.asp")
end if %><A href="contact.asp">Mail to us</A>
<CENTER>ATM Customer Advice<hr color="blue" ><FONT COLOR="BLUE" size="6"><IMG SRC="MM.bmp" NAME="C" WIDTH="68" height="68" BORDER="0" ALT="logo" align="left">MILIND'S BANK OF INDIA</font></CENTER><hr color="blue" > 
<% If (Request.Cookies("NumVisits")=0) then %>
<font color="apple" size="4">This is the first time you visite ATM   <br>
<% else %>
<font color="apple" size="4">Thanks for visiting ATM again !  You have visited  a total of   <%=Request.Cookies("NumVisits")%>    time(s).<p>
<% End If %>
<% If (Request.Cookies("NumVisits")>0) then%>
<font color="apple" size="4">You last access ATM at  
<% =LastAccessTime %>
<% =LastAccessDate %>
<% End if %></font><br>





<font color="#FF##F" size="4">
Dear <%= R("Name") %>.</br>You enter an amount of  <%=request.form("t12")%><hr color="blue" > 
<table cellpadding="20" cellspacing="0" align="center">
<tr><hr><td width=190><font color="blue" size="4">Card Number :</td><td ><font color="blue" size="4"><%=R("CardNo")%></td></tr>
<tr><td><font color="blue" size="4">From A/C No.</td><td><font color="apple" size="4"><%=R("Account Number")%></td></tr>
<tr><td><font color="blue" size="4">MOD BAL</td><td><font color="blue" size="4">$
<font color="apple" size="4"><%=R("MODEbal")%>
</td></tr>
<tr><td><font color="blue" size="4">Your E-Mail ID : </td><td><font color="blue" size="4">
<font color="apple" size="4"><%=R("E-Mail ID")%>
</td></tr>
<tr><td><font color="blue" size="4"><font color="blue" size="4">NEW BAL.:</td><td><font color="blue" size="4"><font color="blue" size="4">$<font color="apple" size="4">
<%DIM sum, d
sum = R("ACC")
d = y
sum = sum - d
%><%Response.write(sum)%></td></tr>
<font color="blue" size="4"></table><hr color="blue" ><hr>
<center><TT>Copy right(c)MILIND's BANK of INDIA <br>e-mail : milind.rohit2011@mail.com<br>  Mobil no.: 9617410166 Head Office no.: 8989158536 , 1800112xxx(Toll Free)<br>Visit us at www.milindbankofindia.m
<hr>
</font>
</BODY>
</HTML>