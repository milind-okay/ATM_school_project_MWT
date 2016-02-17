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
<HTML>
<HEAD>
<TITLE>ATM DATA SOURCE</TITLE>
<BODY>



<FONT SIZE="4" FACE="Comic Sans MS">
<H2>ATM  ACC PIN </H2>
</FONT>
<HR>

<TABLE BORDER=3>
<TR>
	<TH>sn.No. </TH><TH>PIN </TH><TH>Account Number</TH>
	
</TR>
<% Dim L
	L=1
	Do While Not R.EOF
%>
<TR>
	<TD><% Response.Write (L) %> </TD>
	
		<TD><% Response.Write R("PIN") %> </TD>
	<TD><% Response.Write R("Account Number") %> </TD>
<% R.MoveNext
	L=L+1
Loop %>
</TABLE>
<%	R.Close
	C.Close
	Set R=Nothing
	Set C=Nothing %>
</BODY>
</HTML>
