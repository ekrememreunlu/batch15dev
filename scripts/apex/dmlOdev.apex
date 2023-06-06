dmlOdev.createAccount();
dmlOdev.updateAccount();
dmlOdev.deleteAccount();
dmlOdev.createOpp();
dmlOdev.deleteOpp();

account acc2 = [select id from account where name ='University of Arizona' limit 1];
Account acc = new account();
acc.name = 'Summer Fest LLC';
acc.parentId = acc2.id;
acc.type = 'Technology Partner';
acc.rating = 'Hot';
acc.annualrevenue = 200000000;
insert acc;

list<Contact> conList = new list<Contact>();
for (integer i = 0; i<3; i++){
    contact con = new contact();
    con.lastname = 'Event Planer ' +i;
    con.phone = '+1 2345 7896';
    con.leadsource = 'Web';
    con.accountId = acc.id;
    conList.add(con);
}
insert conList;