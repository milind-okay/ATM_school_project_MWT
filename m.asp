<html><head><title>ATM</title>
<SCRIPT LANGUAGE= "VBSCRIPT">
function Clock()
dim h, m,s
h= hour(time())
m=minute(time())
s=second(time())
document.Clock.digit.Value=""&h&":"&m&":"&s
end function


function C_onmouseover
document.C.width=899
document.C.height=99
end function

function C_onmouseout
document.C.width=624
document.C.height=84
end function

function B_onmouseover
document.B.width=260
document.B.height=173
end function

function B_onmouseout
document.B.width=224
document.B.height=144
end function
function D_onmouseover
document.D.width=260
document.D.height=52
end function

function D_onmouseout
document.D.width=224
document.D.height=44
end function

function H_onmouseover
document.H.width=98
document.H.height=98
end function

function H_onmouseout
document.H.width=68
document.H.height=68
end function


</SCRIPT>

</head>
<body Background="BK.jpg" onload="Clock()"><IMG SRC="MM.bmp" NAME="H" WIDTH="78" height="88" BORDER="0" ALT="logo" align="left">
<CENTER><hr color="orange" ><hr color="orange" > 




<% Dim NextAd
	Set NextAd=Server.CreateObject("MSWC.AdRotator") %>

<% Response.Write(NextAd.GetAdvertisement("/MILINDATM/ad.txt")) %>
<hr color="orange" >
<hr color="red" widt=""><marquee scrollamount="7"><img src="V.jpg" hight="122" width="233" alt="MILIND" NAME="B"><img src="M.jpg" hight="122" width="233" alt="MILIND" NAME="J"><img src="CA.gif" hight="122" width="233" alt="MILIND" NAME="I"></A></MARQUEE><hr color="orange" ></FONT><FONT COLOR="BLUE" SIZE="76">
<%
If Hour(time) >= 5 And Hour(Time) <= 12 Then 
	

	Greeting = "GOOD MORNING"
	Else
		Greeting = "GOOD EVENING"
	End If
	Response.Write(Greeting)
%></FONT>
<br><FONT COLOR="BLUE" SIZE="8"></FONT>
<br><br><FONT COLOR="##f#f#" SIZE="2">Press to  </FONT><FONT COLOR="f##f##" SIZE="81"><A HREF="P1.asp" onMouseOver="window.ststus='You get to start banking'return True"><IMG SRC="START.jpg" NAME="D" WIDTH="224" height="44" BORDER="2" ALT="MILIND'S"></A>

<form name="Clock">
<input type="button" name="digit" value="h:m:s" Style="font-size=24;color=blue;font-family:Comic Sans MS">
</form>


</CENTER>
</BODY></HTML>