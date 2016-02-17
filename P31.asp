<html><head><title>ATM</title>
<SCRIPT LANGUAGE= "VBSCRIPT">
<% sub P()
dim p,f
p=12
f=(document.F1.t1.value)
if p=f then
response.redirect="P4.asp"
else
response.redirect="P10.asp"
end if
end sub

function C_onmouseover
document.C.WIDTH=714
document.C.height=85
end function

function C_onmouseout
document.C.WIDTH=699
document.C.height=74
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
<body Background="BK.jpg"><IMG SRC="MM.bmp" NAME="H" WIDTH="68" height="68" BORDER="0" ALT="logo" align="left">
<CENTER><hr color="orange" ><IMG SRC="MK.jpg" NAME="C" WIDTH="624" height="84" BORDER="2" ALT="MILIND'S"><hr color="orange" ><br>
<hr color="orange" >
<br><br><FORM  method="POST" NAME="F1">
<TABLE  cellpadding="15" cellspacing="23">
<tr><th bgcolor="green">
<FONT COLOR="ORANG" size="4">firstNAME :</FONT><INPUT TYPE="password" name="t1" size="30" value="" Style="font-size=14;color=blue;font-family:Comic Sans MS"></a></FONT></TH></tr>

<tr><th bgcolor="#FF##F">
<FONT COLOR="white" size="4">lastNAME :</FONT><INPUT TYPE="password" name="t2" size="30" value="" Style="font-size=14;color=blue;font-family:Comic Sans MS"></a></FONT></TH></tr>

<tr><th bgcolor="yellow">
<FONT COLOR="ORANG" size="4">PASSWORD :</FONT><INPUT TYPE="password" name="t3" size="4" value="" Style="font-size=14;color=blue;font-family:Comic Sans MS"></a></FONT></TH></tr>
</table><INPUT TYPE="button" name="enter" value="ENTER" onclick="P()">
<INPUT TYPE="reset">
</form>


<A HREF="P81.ASP"><IMG SRC="CANCLE.BMP" NAME="X" WIDTH="44" height="34" BORDER="1" ALT="CANCLE"  ALIGN="RIGHT" ALIGN="buttom"></A>

</CENTER>
</BODY></HTML>