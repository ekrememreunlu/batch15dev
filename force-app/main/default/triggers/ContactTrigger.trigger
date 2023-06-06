trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
    if (trigger.isAfter && trigger.isUpdate) {
        ContactTriggerHandler.updateAccountFax(trigger.new, trigger.OldMap);
    }




    // if (Trigger.isAfter) {
    //     if (Trigger.isInsert || Trigger.isUpdate) {
    //         ContactTriggerHandler.updateAccountRollupSummary(Trigger.new);
    //     } else if (Trigger.isDelete) {
    //         ContactTriggerHandler.updateAccountRollupSummary(Trigger.old);
    //     } else if (Trigger.isUndelete) {
    //         ContactTriggerHandler.updateAccountRollupSummary(Trigger.new);
    //     }
    // }
 

    // if (Trigger.isBefore && Trigger.isUpdate) {
    //     //Call handler here.
    //     ContactTriggerHandler.validateContactUpdate1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    //     ContactTriggerHandler.validateContactUpdate2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    // }
    // if (Trigger.isInsert && Trigger.isBefore) {
    //     System.debug('Before trigger Insert');
    // }
    // if (Trigger.isInsert && Trigger.isAfter) {
    //     System.debug('After trigger Insert');
    // }
    
    // if (Trigger.isUpdate && Trigger.isBefore) {
    //     System.debug('Before trigger Update');
    // }
    // if (Trigger.isUpdate && Trigger.isAfter) {
    //     System.debug('After trigger Update');
    // }
    
    // if (Trigger.isDelete && Trigger.isBefore) {
    //     System.debug('Before trigger Delete');
    // }
    //  if (Trigger.isDelete && Trigger.isAfter) {
    //     System.debug('After trigger Delete');
    // }
    
    // if (Trigger.isUndelete && Trigger.isAfter) {
    //     System.debug('After trigger Undelete');
    // }
}

