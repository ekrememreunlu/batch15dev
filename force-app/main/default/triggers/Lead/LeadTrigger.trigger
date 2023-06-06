trigger LeadTrigger on Lead (before insert, after insert, before update, after update) {
    if (trigger.isBefore) {
        LeadTriggerHandler.updateDates(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }



// list<Lead> leadList = trigger.new;
// if (trigger.isInsert) {
//     for (lead eachLead : leadList) {
//         System.debug('eachlead --> ' +eachlead);
//     }
// }
//     if (trigger.isUpdate) {
//         for (lead eachLead : leadList) {
//           System.debug('eachlead Id --> '+eachLead.Id + ', Name--> ' +eachLead.name+ ', Description --> ' +eachlead.description);  
//         }
//     }

}