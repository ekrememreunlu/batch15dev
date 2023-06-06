public class LeadTriggerHandler {
   public static void updateDates(list<Lead> lTriggerNew, List<Lead> lTriggerOld, Map<id, lead> lTriggerNewMap, Map<id, lead> lTriggerOldMap) {
    Boolean wantToUpDate = false;
    for (lead eachLead : lTriggerNew) {
        if (lTriggerOld == null) {
            wantToUpDate = true;
        }
        if (lTriggerOld != null) {
            if (lTriggerOldMap.get(eachLead.id).status != eachLead.status) {
                wantToUpDate = true;
            }
        }
        if (wantToUpDate) {
            switch on eachLead.status {
                when null {
                    eachLead.Created_Date__c = Datetime.now();
                }
                when ''{
                    eachLead.Created_Date__c = Datetime.now();
                }
                when 'Open - Not Contacted'{
                    eachLead.Created_Date__c = Datetime.now();
                }
                when 'Working - Contacted'{
                    eachLead.Created_Date__c = Datetime.now();
                }
                when 'Closed - Converted'{
                    eachLead.Closed_Won_Date__c = Datetime.now();
                }
                when 'Closed - Not Converted'{
                    eachLead.Closed_Lost_Date__c = Datetime.now();
                }
                
            }
        }
    }
   }
}