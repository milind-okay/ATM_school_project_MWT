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

<TABLE cellpadding="15"  border=10 align="left">
<tr BGcolor="grey" font face="Monotype Corsiva"><th> <font color="white" face="Monotype Corsiva" SIZE="5" ><A HREF="aboutatm.asp">About Atm</a></font></th></tr>
<tr BGcolor="grey" font face="Monotype Corsiva"><th> <font color="white" face="Monotype Corsiva" SIZE="5" ><A HREF="SOF.asp">Soft Required</a></font></th></tr><tr BGcolor="grey" font face="Monotype Corsiva"><th> <font color="white" face="Monotype Corsiva" SIZE="5" ><A HREF="aboutatm.asp">About Atm</a></font></th></tr><tr BGcolor="grey" font face="Monotype Corsiva"><th> <font color="white" face="Monotype Corsiva" SIZE="5" ><A HREF="conn2.asp">Data Base</a></font></th></tr><tr BGcolor="grey" font face="Monotype Corsiva"><th> <font color="white" face="Monotype Corsiva" SIZE="5" ><A HREF="a.asp">Tags Used</a></font></th></tr>
<tr BGcolor="grey" font face="Monotype Corsiva"><th> <font color="white" face="Monotype Corsiva" SIZE="5" ><A HREF="a.asp">Procces of atm</a></font></th></tr>
<tr BGcolor="grey" font face="Monotype Corsiva"><th> <font color="white" face="Monotype Corsiva" SIZE="5" ><A HREF="MAIN.ASP"><IMG SRC="back.BMP" NAME="X" WIDTH="64" height="34" BORDER="1" ALT="BACK"  ALIGN="RIGHT" ALIGN="buttom"></A>
</CENTER></font></th></tr><tr BGcolor="grey" font face="Monotype Corsiva" colspan=3 ><th> <font color="white" face="Monotype Corsiva" SIZE="5" ></font></th></tr>
</table>


<FONT SIZE="4" FACE="Comic Sans MS">
<H2>ATM  ACC DATA </H2>
</FONT>
<HR>

<TABLE BORDER=3>
<TR>
	<TH><% Dim fieldName
		R.MoveFirst
		Response.Write ("ID") %> </TH>
	<% For Each fieldName in R.Fields %>
	<TH><% Response.Write (fieldName.Name) %> </TH>
	<% Next %>
</TR>
<% Dim sln
	sln=1
	Do While Not R.EOF
%>
<TR>
	<TD><% Response.Write (sln) %> </TD>
	<% For Each fieldName in R.Fields %>
		<TD><% Response.Write fieldName.Value %> </TD>
	<% Next %>
<% R.MoveNext
	sln=sln+1
Loop %>
</TABLE>
<%	R.Close
	C.Close
	Set R=Nothing
	Set C=Nothing %>

<A HREF="MAIN.ASP"><IMG SRC="back.BMP" NAME="X" WIDTH="44" height="34" BORDER="1" ALT="BACK"  ALIGN="RIGHT" ALIGN="buttom"></A>
</BODY>
</HTML>
