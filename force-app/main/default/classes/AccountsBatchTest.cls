@isTest

public class AccountsBatchTest {
    @isTest

    public static void testBatch1() {
        List<Account> listAcc = new List<Account>();
        for (Integer i = 0; i < 900; i++) {
            account ac = new account();
            ac.name = 'test acc ' + i;
            listAcc.add(ac);
            
        }
        insert listAcc;

        Test.startTest();
        AccountsBatch ab = new AccountsBatch();
        database.executeBatch(ab,500);
        Test.stopTest();

        List<Account> allAccounts = [select id, description from account];
        for (account eachAcc : allAccounts) {
            Assert.isTrue(eachAcc.description.containsIgnoreCase('batch'));
        }

    }
}
  