public class dmlOdev {
    public static void createAccount() {
        list<account> accList = new List<account>();
        for (Integer i = 0; i < 2; i++) {
          account acc = new account();
          acc.name = 'Assignment ' +i; 
          acc.phone = '555211455';
          acc.site = 'www.assignment.com';
          accList.add(acc);
        }
        insert accList;
    }
    public static void updateAccount() {
        list<account> accList = [select id, name, phone from account where name like 'Assignment__'];
        for (account accs : accList) {
            accs.name = 'Assignment Update';
            accs.phone = '2668799445';
        }
        update accList;
    }
    public static void deleteAccount() {
        list<account> accList = [select id from account where name like 'Assignment_______'];
        delete accList;
    }
    public static void createOpp() {
        list <Opportunity> oppList = new list<Opportunity>();
        for (Integer i = 0; i < 149; i++) {
            opportunity opp = new opportunity();
            opp.type = 'New Customer';
            opp.stagename= 'Qualification';
            opp.closedate = date.newInstance(2024, 02, 02);
            opp.name = 'Homework';
            opp.description = 'test description';
            oppList.add(opp);
        }
        insert oppList;

    }
    public static void deleteOpp() {
        list<opportunity> oppList = [select id from opportunity where name like 'Homework'];
        delete oppList;
    }
}