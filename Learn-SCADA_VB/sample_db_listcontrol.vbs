Sub s리스트컨트롤()

RunScript("s그리드데이터셋")
카운트 = GetTagVal("MY_SQL.RS_COUNT")

Sleep(300)

wcGridCommand "리스트컨트롤", 100, 0, 0

for i =0 to 카운트 -1  '작성하기 나름, 리스트컨트롤 row가 0부터 시작함만 인지하도록

주문자명_변수 = GetTagVal("MY_SQL.SCADA_주문자명" + Format(i, "_000"))
wcGridSetData "리스트컨트롤", 0, i, 주문자명_변수


수량_변수 = GetTagVal("MY_SQL.SCADA_수량" + Format(i, "_000"))
wcGridSetData "리스트컨트롤", 1, i, 수량_변수


next i


End Sub