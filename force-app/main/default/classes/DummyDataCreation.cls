//Update the description field of top 10 opportunities as "This is one of the top 10 opportunities.Please work on this properly “.
public class DummyDataCreation {
    public static void updateDescription() {
        List<Opportunity> listOpp = [select id, description from opportunity where amount != null order by amount desc limit 10];
        for (Opportunity eachOpp : listOpp) {
            eachOpp.description = 'This is one of the top 10 opportunities.Please work on this properly';
        }
        update listOpp;
    }
//     Write a logic to create and return n number of opportunities for a particular AccountId.
// AccountId and n will be passed as parameters in the method.
// Populate opportunity fields as follows:
// Close date as 3 years from today
// Stage name as Prospecting
// Opportunity amount as Account’s annual revenue divided by n
// and Opportunity name same as Account name
// For Ex: if n=2, Then two new opportunities If n=0, , Print the message as “Please tell us how many opportunities needs to be created”
public static list<Opportunity> createOpportunities(id accountId, integer n) {
    List<Opportunity> Opplist = new List<Opportunity>();
    if (n<=0) {
        System.debug('Please tell us how many opportunities needs to be created');
        return Opplist;
    }
    Account acc = [select name, AnnualRevenue from account where id = :accountid];
   for (Integer i = 0; i < n; i++) {
    opportunity opp = new opportunity();
    opp.name = acc.name;
    opp.closedate = date.today().addYears(3);
    opp.stagename = 'Prospecting';
    if (acc.annualrevenue != null) {
        opp.amount = acc.annualrevenue / n; 
    }
   //opp.accountId = accountid;
   opp.accountId = acc.id;
   Opplist.add(opp);

   } 
   insert Opplist;
   return Opplist;



}

public static void addContactsToAccounts() {
    List<Account> accounts = [SELECT Id, Name FROM Account WHERE Id NOT IN (SELECT AccountId FROM Contact)];
    List<Contact> contacts = new List<Contact>();
    for (Account acc : accounts) {
        Contact con = new Contact();
        con.FirstName = 'New';
        con.LastName = acc.Name;
        con.AccountId = acc.Id;
        contacts.add(con);
    }
    insert contacts;
}
public static void deleteOpportunities() {
    List<Opportunity> opps = [SELECT Id FROM Opportunity where Amount < 20000 AND StageName = 'Closed Lost'];
    delete opps;
}
public static List<Account> createAccounts(Integer n) {
    List<Account> accounts = new List<Account>();
    for (Integer i = 0; i < n; i++) {
        Account acc = new Account(
            Name = 'Account ' + i,
            Rating = 'Hot',
            Phone = '555-555-5555',
            ShippingStreet = '123 Main St',
            ShippingCity = 'Anytown',
            ShippingState = 'CA',
            ShippingPostalCode = '12345',
            ShippingCountry = 'USA',
            BillingStreet = '123 Main St',
            BillingCity = 'Anytown',
            BillingState = 'CA',
            BillingPostalCode = '12345',
            BillingCountry = 'USA'
        );
        accounts.add(acc);
    }
    insert accounts;
    return accounts;
}
public static List<Contact> createContacts(Integer n, List<Account> accounts) {
    List<Contact> contacts = new List<Contact>();
    for (Account acc : accounts) {
        for (Integer i = 0; i < n; i++) {
            Contact con = new Contact(
                FirstName = 'Contact ' + i,
                LastName = 'test',
                AccountId = acc.Id,
                Phone = '555-555-5555',
                MailingStreet = '123 Main St',
                MailingCity = 'Anytown',
                MailingState = 'CA',
                MailingPostalCode = '12345',
                MailingCountry = 'USA',
                OtherStreet = '123 Main St',
                OtherCity = 'Anytown',
                OtherState = 'CA',
                OtherPostalCode = '12345',
                OtherCountry = 'USA'
            );
            contacts.add(con);
        }
    }
    insert contacts;
    return contacts;
}
public static List<Case> createCases(List<Contact> contacts) {
    List<Case> cases = new List<Case>();
    for (Contact con : contacts) {
        Case c = new Case(
            ContactId = con.Id,
            AccountId = con.AccountId,
            Subject = 'New Case',
            Status = 'New',
            Origin = 'Web'
        );
        cases.add(c);
    }
    insert cases;
    return cases;
}

    
}