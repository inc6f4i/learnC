Sub 주차() 
while 1 
현재시간 = now() 
'입차 
    if GetTagVal("PRACTICE.DIG11") = 1 and GetTagVal("PRACTICE.DIG13") = 0 then 
        SetTagVal "PRACTICE.DIG13", 1 
        SetTagVal "PRACTICE.DIG15", 1 
        입차카운터 = 1 
		입차시간 = now() 
		SetTagVal "PRACTICE.STR11", timestr(2)
    end if 

    if GetTagVal("PRACTICE.DIG11") = 0 and GetTagVal("PRACTICE.DIG13") = 1 then 
    SetTagVal "PRACTICE.DIG13", 0
	end if 

		if 입차카운터 = 1 then 
        시차 = DateDiff("S", 입차시간, 현재시간) 
		end if 

		if 시차 > 10 then 
        SetTagVal "PRACTICE.DIG15", 0 
		입차카운터 = 0
	 end if 

    sleep(1000) 
wend


End Sub