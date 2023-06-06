@isTest
public class DmlDemo15Test {
    @isTest
    private static void testDML1() {
       
        DmlDemo15.dmlInsertDemo1(); 

    
        list<account> listAcc = [select id, name from account];
        
        system.assertEquals(1, listAcc.size());
        Assert.areEqual(1, listAcc.size());

        Assert.areEqual('Salesforce', listAcc[0].name);
        Assert.areNotEqual('softinnovas', listAcc[0].name);//not equal then it will pass the test
    }
    @isTest
    public static void testDML2(){
        
       
        DmlDemo15.dmlInsertDemoCO1();
        //assert
            //soql to get records
        list<department__c> listdep = [select id, name__c from department__c];
        system.assertEquals(1, listdep.size());
        assert.areequal(1, listdep.size());
        Assert.areEqual('Human Resource', listdep[0].name__c);
    }

    @isTest
    private static void testDML3() {
       
        Account acc3 = new account(name = 'acc test');
        insert acc3;

        DmlDemo15.dmlUpdateDemo2();
        
        account accAssert = [select id, name from account where id = :acc3.Id];
        Assert.areEqual('Softinnovas Inc.', accAssert.Name);
    }

    @isTest
    private static void testDML4() {
        //prepare data
            //what data?
        Department__c dept = new Department__c(Name__c = 'QA');
        insert dept;

        //call method
        DmlDemo15.insertRelatedRec2();

        //assert
            //what to assert?
        Employee__c emp = [select id, name, first_name__c, last_name__c, Department__c from Employee__c where Department__c = :dept.id limit 1];
        Assert.areEqual('Don', emp.First_Name__c);
    }

    @isTest
    static void testDML5(){
        List<account> listAcc = new list<account>();
        for (Integer i = 0; i < 155; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
           
            //add account to list
            listAcc.add(ac);
        }

        //if list is not empty then only insert
        if (!listAcc.isEmpty()) {
            insert listAcc;//insert 155 accounts
        }

        test.startTest();

        
        DmlDemo15.bulkUpdateRight();

        test.stopTest();

        account acc = [select id, name from account limit 1];
        assert.isTrue(acc.name.contains('v2'));
    }

}