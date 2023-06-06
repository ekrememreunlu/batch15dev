trigger CaseTrigger on Case (before insert, before update, after insert, after update) {
if (trigger.isAfter&&trigger.isInsert) {
    for (case c : trigger.new) {
        if (c.Id != null) {
            System.debug('Case# ' + c.CaseNumber + ' was created with id ' + c.Id + ' on ' + c.CreatedDate + '.');
        }
    }
    }
if (trigger.isBefore && trigger.isUpdate) {
    for (Case c : Trigger.new) {
        if (c.CaseNumber != null && Trigger.oldMap.get(c.Id).origin != c.origin) {
            System.debug('Case origin is changed for ' + c.CaseNumber);
        }
    }
}  
}