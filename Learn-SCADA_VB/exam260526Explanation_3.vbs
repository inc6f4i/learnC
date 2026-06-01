Sub 풀이3()

Dim strConn As String 
Dim a As String 

for j = 0 to 9
settagval "WAIT.NO" + format(j, "_000"), 0
settagval "WAIT.PN" + format(j, "_000"), ""
settagval "WAIT.SN" + format(j, "_000"), ""
settagval "WAIT.COUNT" + format(j, "_000"), 0
next j 

strConn = "Driver=MySQL ODBC 5.3 ANSI Driver; Server=127.0.0.1; database=assignment; User ID=cimondb; Password=cimondb123!;"

set conn = createobject("ADODB.connection") 
set rs = createobject("ADODB.Recordset") 
conn.Open strConn 

a = "Select * From assignment.wait"

Set rs1 = conn.Execute(a) 


 settagval "WAIT.NO_000", rs1.fields(0)
 settagval "WAIT.PN_000", cstr(rs1.fields(1)) 
settagval "WAIT.SN_000", cstr(rs1.fields(2))
settagval "WAIT.COUNT_000", rs1.fields(3)

rc= gettagval("WAIT.RS_COUNT")

for i=1 to rc-1

    rs1.MoveNext
settagval "WAIT.NO" + format(i, "_000"), rs1.fields(0)
settagval "WAIT.PN" + format(i, "_000"), cstr(rs1.fields(1))
settagval "WAIT.SN" + format(i, "_000"), cstr(rs1.fields(2))
settagval "WAIT.COUNT" + format(i, "_000"), rs1.fields(3)

next i

conn.close




set rs = nothing
set conn = nothing


End Sub