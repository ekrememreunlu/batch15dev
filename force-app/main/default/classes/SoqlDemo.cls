public class SoqlDemo {
    public static void accountSOQL1(){
       list<account> listAcc = [select id, name, phone, website from account];
       System.debug(listAcc);
       List<contact> listCon = [select id, name, phone from contact];
       System.debug(listCon);
    }

    public static void accountSOQLOneR() {
        account acc = [select id, name, phone, website from account order by createddate desc limit 1];
        System.debug(acc);
        string accName = acc.Name;
        System.debug('name of acc is: ' +accName);
        System.debug('Website of acc is: ' +acc.website);
        
    }
    public static void accountSOQL3() {
        list<account> listAcc = [select id, name, phone, accountnumber from account order by createddate desc];

        for (account eachAcc : listAcc) {
            system.debug('each account record is ' + eachAcc);

            string accName = eachAcc.Name;
            system.debug('account name is ' + accName);
            system.debug('account phone is ' + eachAcc.Phone);
            system.debug('accountnumber is ' + eachAcc.accountnumber);
            system.debug('------');
        }
    }
    public static void accountSoqlFilter() {
        List<account> listAcc1 = [select id, name, website from account where name = 'Lux'];
        System.debug('List acc1: ' +listAcc1);
    }
    public static void projectSoqlFilter(string status) {
        list<salesforce_project__c> listSP = [select id, name, project_name__c, status__c, description__c from salesforce_project__c where status__c = :status];
        System.debug(listSP);
        System.debug('num of records: ' +listSP.size());
        
    }
}
