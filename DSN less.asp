<% @LANGUAGE="VBScript" %>
<% Option Explicit %>
<% ' Setting a connection object
	Dim studCon, studRec
	Set studCon=Server.CreateObject("ADODB.Connection")
	studCon.ConnectionString="DSN=studData"
	' Opening the connection
	studCon.Open 
	' Creating the recordset object
	Set studRec=Server.CreateObject("ADODB.Recordset")
	studRec.Open "STUDENT", studCon 
%>
<HTML>
<HEAD>
<TITLE>View of Student record</TITLE>
<BODY>
<FONT SIZE="4" FACE="Comic Sans MS">
<H2>Address Format</H2>
</FONT>
<HR>
<% Dim fieldName, sln
	sln=1
 	Do While Not studRec.EOF
		Response.Write ("Sl.No. " & sln & "<BR>")
		For Each fieldName in studRec.Fields 
			Response.Write (fieldName.Name & " : " & "<B>" & fieldName.Value & "</B>" & "<BR>")
		Next
		response.Write ("<HR>")
		studRec.MoveNext
		sln=sln+1
		
	Loop
	studRec.Close
	studCon.Close
	Set studRec=Nothing
	Set studCon=Nothing %>
</BODY>
</HTML>
	
	
