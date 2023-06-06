trigger OpportunityTrigger on Opportunity (before insert, after insert, before update, after update) {

    if (trigger.isBefore && trigger.isInsert) {
        List<Opportunity> oldOppList = trigger.old;
        List<Opportunity> newOppList = trigger.new;
        Map<Id,Opportunity> newOppMap = trigger.newMap;
        Map<Id,Opportunity> OldOppMap = trigger.oldMap;
        System.debug('before insert');
        System.debug('what will be the value of oldOppList ' +oldOppList);
        System.debug('what will be the value of newOppList ' +newOppList);
        System.debug('what will be the value of newOppMap ' +newOppMap);
        System.debug('what will be the value of OldOppMap ' +OldOppMap);
        System.debug('----------------------------------------------');
    }
    
    if (trigger.isAfter && trigger.isInsert) {
        List<Opportunity> oldOppList = trigger.old;
        List<Opportunity> newOppList = trigger.new;
        Map<Id,Opportunity> newOppMap = trigger.newMap;
        Map<Id,Opportunity> OldOppMap = trigger.oldMap;
        System.debug('after insert');
        System.debug('what will be the value of oldOppList ' +oldOppList);
        System.debug('what will be the value of newOppList ' +newOppList);
        System.debug('what will be the value of newOppMap ' +newOppMap);
        System.debug('what will be the value of OldOppMap ' +OldOppMap);
        System.debug('----------------------------------------------------------');
    }
    
    if (trigger.isBefore && trigger.isUpdate) {
        List<Opportunity> oldOppList = trigger.old;
        List<Opportunity> newOppList = trigger.new;
        Map<Id,Opportunity> newOppMap = trigger.newMap;
        Map<Id,Opportunity> OldOppMap = trigger.oldMap;
        System.debug('before update');
        System.debug('what will be the value of oldOppList ' +oldOppList);
        System.debug('what will be the value of newOppList ' +newOppList);
        System.debug('what will be the value of newOppMap ' +newOppMap);
        System.debug('what will be the value of OldOppMap ' +OldOppMap);
        System.debug('-----------------------------------------------');
    }
    
    if (trigger.isAfter && trigger.isUpdate) {
        List<Opportunity> oldOppList = trigger.old;
        List<Opportunity> newOppList = trigger.new;
        Map<Id,Opportunity> newOppMap = trigger.newMap;
        Map<Id,Opportunity> OldOppMap = trigger.oldMap;
        System.debug('after update');
        System.debug('what will be the value of oldOppList ' +oldOppList);
        System.debug('what will be the value of newOppList ' +newOppList);
        System.debug('what will be the value of newOppMap ' +newOppMap);
        System.debug('what will be the value of OldOppMap ' +OldOppMap);
    }






    // Integer count = 0;
    // for (Opportunity o : Trigger.new) {
    //     count++;
    //     System.debug(o.Name + ' - ' + o.CloseDate + ' - ' + o.Amount);
    //     System.debug('StageName: ' + o.StageName + ', Description: ' + o.Description + ', Opportunity Name: ' + o.Name);
    // }
    // System.debug('Total Opportunities created: ' + count);
// if (trigger.isBefore && trigger.isUpdate) {
//     for (Opportunity o : Trigger.new) {
//         Opportunity oldOpp = Trigger.oldMap.get(o.Id);
//         if (o.Name != oldOpp.Name || o.Amount != oldOpp.Amount) {
//             System.debug('Opportunity Name changed from ' + oldOpp.Name + ' to ' + o.Name);
//             System.debug('Amount changed from ' + oldOpp.Amount + ' to ' + o.Amount);
//         }
//     }
// }

// for (Opportunity o : Trigger.new) {
//     Opportunity oldOpp = Trigger.oldMap.get(o.Id);
//     if (o.StageName != oldOpp.StageName) {
//         System.debug('Description: ' + o.Description + ', Opportunity Name: ' + o.Name);
//     }
// }

}