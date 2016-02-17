<html>
<head>
<Script Language="VBScript">
	<!--
	Sub Find_Sum()
		Dim a
		Dim b
		Dim c
		Dim d
		Dim e
		Dim f
		a = CInt(document.frm1.one.value)
		b = CInt(document.frm1.two.value)
		c = CInt(document.frm1.three.value)
		d = CInt(document.frm1.four.value)
		e = a + b + c + d
		document.frm1.five.value = e
		document.frm1.six.value = e/4
	End Sub
	-->
</Script>
</head>
<body>
<font style = "bold" color = "blue" size = "4">
<form name = "frm1">
<H2>Enter Marks:</H2><BR>
First Mark :  <INPUT TYPE="text" NAME=one size="3" VALUE="0"><BR>
Second Mark :   <INPUT TYPE="text" NAME=two size="3" VALUE="0"><BR>
Third Mark :  <INPUT TYPE="text" NAME=three size="3" VALUE="0"><BR>
Fourth Mark :  <INPUT TYPE="text" NAME=four size="3" VALUE="0"><BR><BR>
<INPUT TYPE="button" NAME=check VALUE=checkme onClick="Find_Sum()"><p>
Total is :  <INPUT TYPE="text" NAME=five size="4" VALUE=" "><BR>
Percentage is : <INPUT TYPE="text" NAME=six size="6" VALUE=" ">
</form>
</body>
</html>