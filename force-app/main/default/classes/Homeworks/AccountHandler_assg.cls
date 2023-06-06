public with sharing class AccountHandler_assg {
    public static void createCon(List<Account> aTriggerNew, List<Account> aTriggerOld, Map<id, Account> aTriggerNewMap, Map<id,Account> aTriggerOldMap) {
        List<Contact> conList = new List<Contact>();
        for (account acc : aTriggerNew) {
           contact c = new contact();
           c.accountId = acc.Id;
           c.LastName = acc.name;
           
           conList.add(c);
        }
        if (!conList.isEmpty()) {
            insert conList;
        }


    }
}