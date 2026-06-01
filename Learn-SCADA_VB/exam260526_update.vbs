Sub sqlup()

Dim strConn As String
Dim a As String 

strConn = "Driver=MySQL ODBC 5.3 ANSI Driver; Server=127.0.0.1; database=assignment; User ID=cimondb; Password=cimondb123!;" 


set conn = createobject("ADODB.connection") 
set rs = createobject("ADODB.Recordset") 

conn.Open strConn

a = "UPDATE assignment.wait SET " & "no = " & GetTagVal("WAIT.NO") & ", " &  "pn = '" & GetTagVal("WAIT.PN") & "', " &  "count = " & GetTagVal("WAIT.COUNT") & " " & "WHERE sn = '" & GetTagVal("WAIT.SN") & "'"
Set rs1 = conn.Execute(a) 

conn.close

set rs = nothing
set conn = nothing

End Sub