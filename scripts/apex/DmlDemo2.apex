DmlDemo2.insertRelatedRec2();
DmlDemo2.bulkInsert();
DmlDemo2.bulkUpdate();
DmlDemo2.accountUpdate();

delete [select id from account where createddate = today limit 155];
undelete [SELECT Id FROM Account WHERE isDeleted = true ALL ROWS];