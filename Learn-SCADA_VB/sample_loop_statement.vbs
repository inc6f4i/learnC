Sub 반복구문()

합계 = 0


    for i = 1 to 9 step 0.1
    	if GetTagVal("SCRIPT.DIG03") = 0 then
	
	    	SetTagVal("SCRIPT.ana05"), i

    	end if

	    if GetTagVal("SCRIPT.DIG03") = 1 then
       
	        i = GetTagVal("SCRIPT.ana05")

       end if

	   sleep(100)
    next i

    for j = 9 to 1 step -0.1
    	if GetTagVal("SCRIPT.DIG03") = 0 then
    	SetTagVal "SCRIPT.ANA05", j 
 	    end if
		if GetTagVal("SCRIPT.DIG03") = 1 then
       
	        j = GetTagVal("SCRIPT.ana05")

         end if
		sleep(100)

    next j

    while GetTagVal("SCRIPT.DIG04") 
		if GetTagVal("SCRIPT.DIG05") = 0 then

    합계 = 합계 + 1

    SetTagVal "SCRIPT.ANA05", 합계

    end if

    sleep(1000)
    wend


End Sub