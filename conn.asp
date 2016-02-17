<% @LANGUAGE="VBScript" %>
<% Option Explicit %>
<% ' Setting a connection object
	Dim studCon
	  'Create a connection object.
	  Set studCon = Server.CreateObject("ADODB.Connection")
	  'Open a connection using the OLE DB connection string.
	  studCon.Open  "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Inetpub\wwwroot\MILINDATM\ATMMILIND.mdb"
%>
<%	Dim studRec
	' Creating the recordset object
	Set studRec=Server.CreateObject("ADODB.Recordset")
	studRec.Open "STUDENT", studCon, 1, 3
%>
<HTML>
<HEAD>
<TITLE>ATM DADA BASE</TITLE>
<BODY>



<FONT SIZE="4" FACE="Comic Sans MS">
<H2>ATM  ACC DATA </H2>
</FONT>
<HR>

<TABLE BORDER=2>
<TR>
	<TH><% Dim fieldName
		studRec.MoveFirst
		Response.Write ("Sl.No") %> </TH>
	<% For Each fieldName in studRec.Fields %>
	<TH><% Response.Write (fieldName.Name) %> </TH>
	<% Next %>
</TR>
<% Dim sln
	sln=1
	Do While Not studRec.EOF
%>
<TR>
	<TD><% Response.Write (sln) %> </TD>
	<% For Each fieldName in studRec.Fields %>
		<TD><% Response.Write fieldName.Value %> </TD>
	<% Next %>
<% studRec.MoveNext
	sln=sln+1
Loop %>
</TABLE>
<%	studRec.Close
	studCon.Close
	Set studRec=Nothing
	Set studCon=Nothing %>
</BODY>
</HTML>
