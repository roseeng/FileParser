<%@ Language=VBScript %>
<%
Function ASPPath()
	Dim strDir
	Dim i
	
	strDir = Request.ServerVariables("PATH_TRANSLATED")
	i = InStrRev(strDir, "\")
	if i > 0 then strDir = Left(strDir, i)
	
	ASPPath = strDir
End Function

%>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE>VSSWrapper - Test</TITLE>
</HEAD>
<BODY>
Här kommer testet:
<P>
<TABLE border=1 cellPadding=1 cellSpacing=0 width="75%" background="" style="WIDTH: 75%">
  
  <TR>
    <TD><STRONG>Fil</STRONG></TD>
    <TD><STRONG>Beskrivning</STRONG></TD>
  </TR>

<%
	Dim objW
	Dim objFile
	Dim strVSSRootDir
	Dim strASPDir
	Dim strURL

'	Const INI_PATH = "P:\VSS\"
	Const INI_PATH = "\\E0099036\Program\VSS\"
	strASPDir = ASPPath()
	strVSSRootDir = strASPDir & "VSS"

'	Response.Write "<TD>" & Request.ServerVariables("LOGON_USER") & "</TD><TD>" & ASPPath() & "</TD>"
	
    Set objW = CreateObject("VSSWrapper.CASPHelper")
    
    objW.OpenProject INI_PATH & "SrcSafe.ini", "$/Teknik_avd/RVA/Dvp/Demo/RVADemoNT/Dvp/WWW/RVADemoNT", strVSSRootDir
    
    For Each objFile In objW.Files
		strURL = Mid(Replace(objFile.Spec, "\", "/"), Len(strASPDir)+1)
		strURL = Server.URLPathEncode(strURL)
        Response.Write "<TR><TD><A HREF=" & strURL & ">" & objFile.Name & "</A></TD>" & _
						   "<TD>" & objFile.Description & "</TD>" & _
					   "</TR>"
    Next

%>
  </TABLE></P>

</BODY>
</HTML>

