//required alanlarin doldurulmasi gerekir
account acc = new account();
acc.name = 'Account Dml';
acc.annualrevenue = 100000;
acc.industry = 'Energy';
insert acc;

contact con = new contact();
con.lastname = 'Contact Dml';
con.accountid = acc.id;
con.leadsource = 'web';
insert con;

salesforce_project__c sp = new salesforce_project__c();
sp.project_name__c = 'salesforce project dml';
sp.status__c = 'new';
insert sp;

account acc2 = [select id from account where name = 'Ytest' limit 1];
contact con2 = new contact();
con2.lastname = 'contact dml 2';
con2.accountId = acc2.id;
insert con2;

salesforce_ticket__c st = new salesforce_ticket__c();
st.salesforce_project__c = sp.id;
st.subject__c = 'salesforce ticket dml';
insert st;

account acc3 = [select id, name from account where name = 'Ytest' limit 1];
acc3.name = 'Ztest';
update acc3;

List<account> accList = [SELECT Id, Name, AnnualRevenue, description FROM Account where annualrevenue != null ORDER BY AnnualRevenue DESC LIMIT 5];

for (account acc : accList) {
    acc.description = date.today() + ' itibariyle bu sirket yillik cirosu en yuksek olan 5 sirketten biri';
}
update accList;

List<Account> accList2 = new List<Account>();
for (Integer i = 1; i <= 5; i++) {
    Account acc = new Account();
    acc.Name = 'dml demo account ' + i;
    accList2.add(acc);
}
insert accList2;

List<Opportunity> oppList = new List<Opportunity>();
for (Account acc : accList2) {
    for (Integer i = 1; i <= 5; i++) {
        Opportunity o = new Opportunity();
        o.Name = 'Opportunity ' + i + ' for ' + acc.Name;
        o.CloseDate = Date.today().addDays(30);
        o.StageName = 'Prospecting';
        o.Amount = 10000;
        o.AccountId = acc.Id;
        oppList.add(o);
    }
}
insert oppList;