function saveDailyReport() {
  const inputSs = SpreadsheetApp.getActiveSpreadsheet();
  const input = inputSs.getSheetByName("dailyWork");

  // C1이 FALSE이고 C2가 TRUE일 때만 저장
  const c1 = input.getRange("C1").getValue();
  const c2 = input.getRange("C2").getValue();
  const c3 = input.getRange("C3").getValue();
  if (c1 !== false || c2 !== true || c3 !== true) return;

  const today = input.getRange("C7").getValue();
  const rebatt = Number(input.getRange("B5").getValue()) || 0;
  const reloc = Number(input.getRange("B6").getValue()) || 0;

  const historySs = SpreadsheetApp.openById(
    "1DIqviPbW7x2Od1F50p21rIFfoRtrMqSxO01iZVc5MGg"
  );

  const summarySheet = historySs.getSheetByName("summary");

  summarySheet.appendRow([
    today,
    rebatt,
    reloc,
    input.getRange("C8").getValue(),
    input.getRange("C9").getValue()
  ]);

  const issueSheet = historySs.getSheetByName("issue");

  const issueRows = input.getRange("A7:B20").getValues();

  issueRows.forEach(row => {
    const device = row[0];
    const description = row[1];

    if (!device && !description) return;

    issueSheet.appendRow([
      today,
      device,
      description
    ]);
  });

  // 저장 후 초기화
  input.getRange("C2").setValue(false);
  input.getRange("C3").setValue(false);
  input.getRange("A7:B20").clearContent();
  input.getRange("B4").clearContent();
  input.getRange("B6").clearContent();
}