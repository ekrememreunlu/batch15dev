@isTest
public class SoqlDemo15Test {
    
    @TestSetup
    static void makeData(){
        List<account> listAcc = new list<account>();
        for (Integer i = 0; i < 15; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
           
            //add account to list
            listAcc.add(ac);
    }
    insert listAcc;

    list<opportunity> listopp = new list<opportunity>();
    for (Integer i = 0; i < 30; i++) {
        opportunity opp = new opportunity(name = 'test opp', stageName = 'New', CloseDate = date.today(), amount = 50000, accountid = listAcc[0].id);
        listopp.add(opp);
    }
    insert listopp;
}
    @isTest
    static void testSoql1(){
        SOQLDemo15.oppAccQuery();

    }
    @isTest
    static void testSoql2(){

    }
}