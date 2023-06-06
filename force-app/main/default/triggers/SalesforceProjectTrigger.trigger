trigger SalesforceProjectTrigger on salesforce_project__c (before insert, before update, after insert, after update) {
    if (trigger.isAfter && trigger.isInsert) {
        SalesforceProjectTriggerHandler.updateDescriptionFuture(trigger.newmap.keySet());
        SalesforceProjectTriggerHandler.createDefaultTicket(trigger.new);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        SalesforceProjectTriggerHandler.validate1(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }

}