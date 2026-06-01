Sub 풀이1()

Dim strConn As String 
Dim a As String 

for j = 0 to 9
settagval "PROGRESS.NO" + format(j, "_000"), 0
settagval "PROGRESS.PN" + format(j, "_000"), ""
settagval "PROGRESS.SN" + format(j, "_000"), ""
settagval "PROGRESS.COUNT" + format(j, "_000"), 0
next j 

strConn = "Driver=MySQL ODBC 5.3 ANSI Driver; Server=127.0.0.1; database=assignment; User ID=cimondb; Password=cimondb123!;"

set conn = createobject("ADODB.connection") 
set rs = createobject("ADODB.Recordset") 
conn.Open strConn 

a = "Select * From assignment.progress"

Set rs1 = conn.Execute(a) 


 settagval "PROGRESS.NO_000", rs1.fields(0)
 settagval "PROGRESS.PN_000", cstr(rs1.fields(1)) 
settagval "PROGRESS.SN_000", cstr(rs1.fields(2))
settagval "PROGRESS.COUNT_000", rs1.fields(3)

rc= gettagval("PROGRESS.RS_COUNT")

for i=1 to rc-1

    rs1.MoveNext
settagval "PROGRESS.NO" + format(i, "_000"), rs1.fields(0)
settagval "PROGRESS.PN" + format(i, "_000"), cstr(rs1.fields(1))
settagval "PROGRESS.SN" + format(i, "_000"), cstr(rs1.fields(2))
settagval "PROGRESS.COUNT" + format(i, "_000"), rs1.fields(3)

next i

conn.close




set rs = nothing
set conn = nothing


End Sub