<html>
<head>
<title>roots of no. </title>
<script language="vbscript">
sub cv()
<% dim a,b,c %>

a = cint(document.f1.t1.value)
b = cint(document.f1.t2.value)
c = cint(document.f1.t3.value)
d= ((b*b)-(4*a*c))
<% 
if d<0 then
document.f2.t1.value="roots are not exit"
elseif d=0 then
document.f2.t1.value="equal  real roots " 
elseif d>0 then
document.f2.t1.value="diff real roots "
end if

r=(-b+sqr(d))/2*a
document.f2.t2.value=(r)
r=(-b-sqr(d))/2*a
document.f2.t3.value=(r) %>

end sub







</script>
</head>
<body BGCOLOR="###Fff">


<H1>FINDING ROOTS OF EQUATION <H1>
<form  name="f1" method="post">
.    ax<sup>2</sup> + bx + c =  <br><br> 
<input type="text" name="t1" size="1">x<sup>2</sup> 
+ <input type="text" name="t2" size="1">x + <input type="text" name="t3" size="1"> = <br><br>
<input type="button" name="sub" value="check" onclick="cv()">
<input type="submit" name="sub2"><br><br>
<input type="reset"><br><br>

</form>
<hr>
<form name="f2">
status<input type="text" name="t1" size="23"><br><br>
1st root<input type="text" name="t2" size="22"><br><br>
2st root<input type="text" name="t3" size="22"><br><br><input type="text" name="t11" size="22">
</form>
</body>
</html>