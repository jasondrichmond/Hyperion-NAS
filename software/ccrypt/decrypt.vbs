' Name: Unencrypt with CCrypt
' Version: 1.0
' Author: Jason D. Richmond
' Copyright: 2004 Anttix, Inc.
' Date: 11/13/04
' Bug Reports & Enhancement Req: jason@anttix.com

Dim File

If Wscript.Arguments.Count = 0 Then
	Wscript.Echo "Need some inputs!"
	Wscript.Quit
End If

For Each Item In Wscript.Arguments
	File = Item
Next 


Set objShell = WScript.CreateObject("WScript.Shell")

objShell.Run "c:\ccrypt\ccrypt.exe -d '" & File & "'"


