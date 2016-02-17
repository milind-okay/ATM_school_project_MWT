<html><head><title>ATM</title>

</head>
<body><IMG SRC="MM.jpg" NAME="H" WIDTH="68" height="68" BORDER="0" ALT="logo" align="left">

<%
dim p,a
a=22 %>
<% p=Request.Form("t2") %>
<%
if p=a then
response.redirect("end.asp")
else
response.redirect("P5.asp")
end if
%>

</BODY></HTML>
