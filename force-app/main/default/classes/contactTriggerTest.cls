@istest
public class contactTriggerHandlerTest {
    @TestSetup
    static void makeData(){
        List<Account> accounts = new List<Account>();
        for (Integer i = 0; i < 5; i++) {
            account a = new account();
            a.Name = 'Test' + i;
            a.fax = '1111111111111';
            accounts.add(a);
        }
        insert accounts;
        
        List<contact> contacts = new List<contact>();
        for (account a : accounts) {
            for (Integer i = 0; i < 5; i++) {
                contact c = new contact();
                c.LastName = 'Test' + i;
                c.AccountId = a.id;
                if (i==0) {
                    c.Main_Contact_Person__c = true;
                    c.fax = '99999999999';
                }else{
                    c.fax = '00000000000';
                }
                contacts.add(c);
            }
        }
        insert contacts;
    }
    @IsTest
    static void updateAccountFaxTest(){
        list<contact> c = [SELECT fax, accountid, Main_Contact_Person__c FROM contact];
        c[0].Main_Contact_Person__c = true;
        update c;


        account a = [SELECT fax FROM account WHERE id = :c[0].accountid LIMIT 1];
        Assert.areEqual(a.fax, c[0].Fax);
    }
}