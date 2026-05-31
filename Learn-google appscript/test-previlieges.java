function testAccess() {

  const historySs = SpreadsheetApp.openById(
    "1DIqviPbW7x2Od1F50p21rIFfoRtrMqSxO01iZVc5MGg"
  );

  Logger.log(historySs.getName());

}