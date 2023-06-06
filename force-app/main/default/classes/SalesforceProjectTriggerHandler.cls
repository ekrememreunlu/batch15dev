public class SalesforceProjectTriggerHandler {
    public static void createDefaultTicket(List<salesforce_project__c> spTriggerNew) {
        //create list<st>
        list<Salesforce_Ticket__c> listST = new List<Salesforce_Ticket__c>();
        for (Salesforce_Project__c newSP : spTriggerNew) {
            Salesforce_Ticket__c st = new Salesforce_Ticket__c();
            st.Subject__c = 'Default ST';
            st.Salesforce_Project__c = newSP.Id; //relationship field
            listST.add(st);
        }
        if (!listST.isEmpty()) {
            insert listST;
        }
    }

    public static void validate1(List<salesforce_project__c> spTriggerNew, List<salesforce_project__c> spTriggerOld, Map<id, Salesforce_Project__c> spTriggerNewMap,Map<id, Salesforce_Project__c> spTriggerOldMap ) {
        
        //create a set of id of SP
            //add SP for which we have updated status field and updated to completed
        set<id> setSPid = new set<id>();
        for (Salesforce_Project__c newSP : spTriggerNew) {
            if (newSP.Status__c != spTriggerOldMap.get(newSP.Id).status__c && newSP.Status__c == 'Completed') {
                setSPid.add(newSP.Id);
            }
        }
        
        //get all the tickets of all the SP(status is completed) and where ticket's status is not completed
        List<Salesforce_Ticket__c> listST = [select id, status__c, Salesforce_Project__c from Salesforce_Ticket__c where Salesforce_Project__c in :setSPid and status__c != 'Completed'];


        //for each ticket
            //get project id from newMap
                //add error
        for (Salesforce_Ticket__c eachST : listST) {
            salesforce_project__c sp = spTriggerNewMap.get(eachST.Salesforce_Project__c);
            sp.addError('Cannot complete project because all its tickets are NOT completed. Try again later.');
        }
    }
    @future
    public static void updateDescriptionFuture(set<id> spIds) {
        List<Salesforce_Project__c> listSP = [select id, name, description__c from Salesforce_Project__c where id in :spIds];

        for (Salesforce_Project__c eachSP : listSP) {
            eachSP.description__c = 'Updated from future. Ok?';

        }
        update listSP;
    }
}