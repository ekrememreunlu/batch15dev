public class DmlDemo2 {
    public static void insertRelatedRec2() {
        //get latest created department
            //create one employee for that department.
            department__c d = [select id from Department__c order by CreatedDate desc limit 1];
            Employee__c e = new Employee__c();
            e.First_Name__c ='Don';
            e.last_name__C ='Eladio';
            e.Salary__c = 50000;
            e.Department__c = d.id;
            e.country__c = 'Mexico';
            insert e;
            System.debug('emp ' +e);

    }
    public static void bulkInsert(){
        List<account> listAcc = new List<account>();
        for (Integer i = 0; i < 155; i++) {
            account ac = new account();
            ac.name = 'test acc ' +i;
            listAcc.add(ac);
        }

        if (!listAcc.isEmpty()) {
            insert listAcc;
        }
    }
    public static void bulkUpdate() {
        List<Account> listAcc =[select id, name from account where createdDate = TODAY];
        for (account eachAcc : listAcc) {
           eachAcc.name += ' v2';
        }
        update listAcc;
    }
    public static void accountUpdate() {
        List<account> allAccounts = [select id, name, description, active__c from account];
        List<account> updateAccList = new List<account>();

        for (account eachAcc : allAccounts) {
            if (eachAcc.active__c == 'No'  || string.isBlank(eachAcc.active__c)) {
                eachAcc.description = 'inactive';
                updateAccList.add(eachAcc);
            }
        }
        update updateAccList;
    }
}