public class DmlDemo {
    public static void dmlInsertDemo1() {
        //create one account record
        account acc = new account();
        acc.Name = 'Salesforce';
        acc.website = 'www.salesforce.com';

        insert acc;
        System.debug('inserted account: ' +acc);

    }
    public static void dmlInsertDemoC01() {
        department__c d = new department__c();
        d.name__c = 'Human Resource';
        d.short_code__C = 'HR';

        insert d;

    }
    public static void dmlUpdateDemo1() {
        account acc = new account();
        acc.name = 'Softinnovas';
        System.debug('before insert DML: ' +acc);
        insert acc;
        System.debug('after insert DML: '+acc);

        acc.name = 'Softinnovas INC.';
        acc.website = 'wwww.softinnovas.com';

        update acc;
        System.debug('after update dml: ' +acc);
    }
    public static void dmlUpdateDemo2() {
        account acc =[select id, name from account order by createddate desc limit 1];
        acc.name = 'Softinnovas Inc.';
        update acc;
    }
}