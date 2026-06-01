Sub progressG()

Dim strConn As String 
Dim a As String 

for j = 0 to 9

SetTagVal("PROGRESS.NO" + Format(j, "_000")), 0
SetTagVal("PROGRESS.PN" + Format(j, "_000")), ""
SetTagVal("PROGRESS.SN" + Format(j, "_000")), ""
SetTagVal("PROGRESS.COUNT" + Format(j, "_000")), 0


next j 

strConn = "Driver=MySQL ODBC 5.3 ANSI Driver; Server=127.0.0.1; database=assignment; User ID=cimondb; Password=cimondb123!;" 
set conn = createobject("ADODB.connection") 
set rs = createobject("ADODB.Recordset") ' 
conn.Open strConn 

a = "Select * From assignment.progress"

Set rs1 = conn.Execute(a)

SetTagVal "PROGRESS.NO_000",  rs1.fields(0)
SetTagVal "PROGRESS.PN_000",  cstr(rs1.fields(1))
SetTagVal "PROGRESS.SN_000",  cstr(rs1.fields(2))
SetTagVal "PROGRESS.COUNT_000",  rs1.fields(3)

rc= gettagval("PROGRESS.RS_COUNT")

for i=1 to rc-1

rs1.MoveNext

SetTagVal("PROGRESS.NO" + Format(i, "_000")), rs1.fields(0)
SetTagVal("PROGRESS.PN" + Format(i, "_000")), cstr(rs1.fields(1))
SetTagVal("PROGRESS.SN" + Format(i, "_000")), cstr(rs1.fields(2))
SetTagVal("PROGRESS.COUNT" + Format(i, "_000")), rs1.fields(3)

next i

conn.close

set rs = nothing
set conn = nothing

End Sub