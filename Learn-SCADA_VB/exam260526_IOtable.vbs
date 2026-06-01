Sub sql_iotable()

RunScript("progressG")
rc = GetTagVal("PROGRESS.RS_COUNT")

Sleep(300)

wcGridCommand "process", 7, 0, 0

for i =1 to rc

a = GetTagVal("PROGRESS.NO" + Format(i-1, "_000"))
wcGridSetData "progress", 1, i, a
b = GetTagVal("PROGRESS.PN" + Format(i-1, "_000"))
wcGridSetData "progress", 2, i, b
c = GetTagVal("PROGRESS.SN" + Format(i-1, "_000"))
wcGridSetData "progress", 3, i, c
d = GetTagVal("PROGRESS.COUNT" + Format(i-1, "_000"))
wcGridSetData "progress", 4, i, d

next i

End Sub