Sub waitG()

Dim strConn As String 
Dim a As String 

for j = 0 to 9

SetTagVal("WAIT.NO" + Format(j, "_000")), 0
SetTagVal("WAIT.PN" + Format(j, "_000")), ""
SetTagVal("WAIT.SN" + Format(j, "_000")), ""
SetTagVal("WAIT.COUNT" + Format(j, "_000")), 0


next j 

strConn = "Driver=MySQL ODBC 5.3 ANSI Driver; Server=127.0.0.1; database=assignment; User ID=cimondb; Password=cimondb123!;" 
set conn = createobject("ADODB.connection") 
set rs = createobject("ADODB.Recordset") ' 
conn.Open strConn 

a = "Select * From assignment.wait"

Set rs1 = conn.Execute(a)

SetTagVal "WAIT.NO_000",  rs1.fields(0)
SetTagVal "WAIT.PN_000",  cstr(rs1.fields(1))
SetTagVal "WAIT.SN_000",  cstr(rs1.fields(2))
SetTagVal "WAIT.COUNT_000",  rs1.fields(3)

rc= gettagval("WAIT.RS_COUNT")

for i=1 to rc-1

rs1.MoveNext

SetTagVal("WAIT.NO" + Format(i, "_000")), rs1.fields(0)
SetTagVal("WAIT.PN" + Format(i, "_000")), cstr(rs1.fields(1))
SetTagVal("WAIT.SN" + Format(i, "_000")), cstr(rs1.fields(2))
SetTagVal("WAIT.COUNT" + Format(i, "_000")), rs1.fields(3)

next i

conn.close

set rs = nothing
set conn = nothing

End Sub