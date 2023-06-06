public with sharing class SoqlAndDmlDemoTurkce {

    public static integer getAccWithOpp(){
        List<Opportunity> lstOpp = [SELECT id,Name,AccountId FROM Opportunity WHERE AccountId != null ];
    
        Set<Id> accIds = new Set<Id>();
        for(Opportunity opp : lstOpp){
            accIds.add(opp.AccountId);
        }

        List<Account> lstAcc = [SELECT id,Name FROM Account Where Id IN: accIds ];
        System.debug(lstAcc.size());
        return lstAcc.size();
    }

    public static integer getAccWithOpp2() { 
        
        List<Account> lstAcc = [SELECT id,Name FROM Account Where Id IN (SELECT AccountId FROM Opportunity WHERE AccountId != null ) ];

        System.debug(lstAcc.size());
        return lstAcc.size();
        
    }
    
}