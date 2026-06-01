Sub s삭제()


Dim 연결 As String
Dim 쿼리 As String 

연결 = "Driver=MySQL ODBC 5.3 ANSI Driver; Server=127.0.0.1;database=cimon; User ID=cimonedu; Password=cimonedu1234;" 


set 디비연결 = createobject("ADODB.connection") 
set 레코드셋 = createobject("ADODB.Recordset") 

디비연결.Open 연결

쿼리 = "delete from cimon.order where name = '"& GetTagVal("MY_SQL.SCADA_주문자명") &"'"

Set 레코드셋1 = 디비연결.Execute(쿼리) 

디비연결.close

set 레코드셋 = nothing
set 디비연결 = nothing

End Sub