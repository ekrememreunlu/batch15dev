
DepartmentsBatch db = new DepartmentsBatch();

id JobId = Database.executeBatch(db, 5);
System.debug('Job id is ' +JobId);
