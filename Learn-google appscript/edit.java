function handleEdit(e) {
  const sheet = e.range.getSheet();

  if (sheet.getName() !== "dailyWork") return;

  const editedCell = e.range.getA1Notation();

  // C1 체크/해제 → 시작/종료 시간 기록
  if (editedCell === "C1") {
    const checked = e.range.getValue();

    if (checked === true) {
      sheet.getRange("C8").setValue(new Date()); // 시작시간
    } else {
      sheet.getRange("C9").setValue(new Date()); // 종료시간
    }

    return;
  }

  // C2 체크 시 저장
  if (editedCell === "C2") {
    const c1 = sheet.getRange("C1").getValue();
    const c2 = sheet.getRange("C2").getValue();
    const c3 = sheet.getRange("C3").getValue();

    if (c1 === false && c2 === true && c3 === true) {
      saveDailyReport();
    }

    return;
  }
}