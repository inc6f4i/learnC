Sub sqlins()


Dim strConn As String
Dim a As String 

strConn = "Driver=MySQL ODBC 5.3 ANSI Driver; Server=127.0.0.1; database=assignment; User ID=cimondb; Password=cimondb123!;" 


set conn = createobject("ADODB.connection") 
set rs = createobject("ADODB.Recordset") 

conn.Open strConn

a = "insert into assignment.wait values("& GetTagVal("WAIT.NO") & ", '"& GetTagVal("WAIT.PN") &"', '"& GetTagVal("WAIT.SN") &"', "& GetTagVal("WAIT.COUNT") & ")"



Set rs1 = conn.Execute(a) 