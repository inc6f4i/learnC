Sub sql_listcontrol()

RunScript("waitG")
rc = GetTagVal("WAIT.RS_COUNT")

Sleep(300)

wcGridCommand "wait", 100, 0, 0

for i =0 to rc -1


a = GetTagVal("WAIT.NO" + Format(i, "_000"))
wcGridSetData "wait", 0, i, a

b = GetTagVal("WAIT.PN" + Format(i, "_000"))
wcGridSetData "wait", 1, i, b

c = GetTagVal("WAIT.SN" + Format(i, "_000"))
wcGridSetData "wait", 2, i, c

d = GetTagVal("WAIT.COUNT" + Format(i, "_000"))
wcGridSetData "wait", 3, i, d


next i


End Sub