<html><head><title>ATM</title>

</head>
<body Background="B2.jpg"><IMG SRC="MM.bmp" NAME="H" WIDTH="68" height="68" BORDER="0" ALT="logo" align="left">
<CENTER><hr color="orange" ><FONT COLOR="WHITE" size="10"> KENDRIA VIDYALAYA <br>BANK of INDIA</FONT><hr color="orange" ><br>
<hr color="orange" >
<br><br>
<%
dim P,P2
P=12
P2=(Request.Form("T2"))

if P2="12" then
response.Redirect("P5.asp")
else
response.Redirect("P6.asp")
end if

%>
select trancation
<A HREF="P81.ASP"><IMG SRC="CANCLE.BMP" NAME="X" WIDTH="44" height="34" BORDER="1" ALT="CANCLE"  ALIGN="RIGHT" ALIGN="buttom"></A>
</CENTER>
</BODY></HTML>