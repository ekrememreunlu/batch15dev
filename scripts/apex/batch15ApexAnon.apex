List<Account> accList = [select id, name from account];
for (account acc : accList) {
    if (acc.name.contains('updated')) {
        acc.name = acc.name.remove('updated');
    }
}
update accList;

BatchApex15 b15 = new BatchApex15();
Database.executeBatch(b15, 5);

//Database.executeBatch(new BatchApex15(), 5);

Queuable15first q15 = new Queuable15first();
system.enqueueJob(q15);

System.enqueueJob(new Queuable15first());

System.enqueueJob(new Queuable15second());