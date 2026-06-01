Sub s그리드데이터셋()
Dim 연결 As String 
Dim 쿼리 As String 

for j = 1 to 9

SetTagVal("MY_SQL.SCADA_주문자명" + Format(j-1, "_000")), ""
SetTagVal("MY_SQL.SCADA_수량" + Format(j-1, "_000")), 0
next j 

연결 = "Driver=MySQL ODBC 5.3 ANSI Driver; Server=127.0.0.1; database=cimon; User ID=cimonedu; Password=cimonedu1234;" 

set 디비연결 = createobject("ADODB.connection")
set 레코드셋 = createobject("ADODB.Recordset") 

디비연결.Open 연결

쿼리 = "Select * From cimon.order" 

Set 레코드셋1 = 디비연결.Execute(쿼리) 

 settagval "MY_SQL.SCADA_주문자명_000", cstr(레코드셋1.fields(0))string
 settagval "MY_SQL.SCADA_수량_000", 레코드셋1.fields(1)

카운트 = gettagval("MY_SQL.RS_COUNT")'태그값에 얼마설정되어있는지에따라 row를 몇개까지 가져올지


for i=1 to 카운트-1

    레코드셋1.MoveNext

settagval "MY_SQL.SCADA_주문자명" + format(i, "_000"), cstr(레코드셋1.fields(0))
settagval "MY_SQL.SCADA_수량" + format(i, "_000"), 레코드셋1.fields(1)

next i

디비연결.close


set 레코드셋 = nothing
set 디비연결 = nothing

End Sub