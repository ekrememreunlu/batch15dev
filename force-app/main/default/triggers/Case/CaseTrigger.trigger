trigger CaseTrigger on Case (before insert, after insert, before update, after update) {
    if (trigger.isBefore && trigger.isInsert) {
        CaseTriggerHandler.updateEmailStatusPririty(Trigger.New);
    }
    if (trigger.isAfter && trigger.isInsert) {
        CaseTriggerHandler.securityCheck(Trigger.New);
    }















    // System.debug('We are in the triggers');

    // if (Trigger.isAfter) {
    //     System.debug('We are in the after triggers');
    //     if (Trigger.isUpdate) {
    //         System.debug('We are in the after-Update triggers');
    //     } else if (Trigger.isInsert) {
    //         System.debug('We are in the after-Insert triggers');
    //     }
    // } else if (Trigger.isBefore) {
    //     System.debug('We are in the before triggers');
    //     if (Trigger.isUpdate) {
    //         System.debug('We are in the before-Update triggers');
    //     } else if (Trigger.isInsert) {
    //         System.debug('We are in the before-Insert triggers');
    //     }
    // }
}
