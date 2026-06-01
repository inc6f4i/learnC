Sub 풀이INSERT()


Dim strConn As String
Dim a As String 

strConn = "Driver=MySQL ODBC 5.3 ANSI Driver; Server=127.0.0.1; database=assignment; User ID=cimondb; Password=cimondb123!;"


set conn = createobject("ADODB.connection") 
set rs = createobject("ADODB.Recordset") 

conn.Open strConn

a = "insert into assginment.wait values("& GetTagVal("PROGRESS.NO_000") & " ,'"& GetTagVal("PROGRESS.PN_000") &"', '"& GetTagVal("PROGRESS.SN_000") &"',"& GetTagVal("PROGRESS.COUNT_000") & " )"


Set rs1 = conn.Execute(a) 

conn.close

set rs = nothing
set conn = nothing

End Sub