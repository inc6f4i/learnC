Sub s입출력테이블()

RunScript("s그리드데이터셋")
카운트= GetTagVal("MY_SQL.RS_COUNT")

Sleep(300)

wcGridCommand "입출력테이블", 7, 0, 0

for i =1 to 카운트'보기편한대로 바꾸면됨 입출력은 1,1부터 시작

주문자명_변수 = GetTagVal("MY_SQL.SCADA_주문자명" + Format(i-1, "_000"))
wcGridSetData "MYSQL_입출력테이블", 1, i, 주문자명_변수

수량_변수 = GetTagVal("MY_SQL.SCADA_수량" + Format(i-1, "_000"))
wcGridSetData "MYSQL_입출력테이블", 2, i, 수량_변수

next i


End Sub