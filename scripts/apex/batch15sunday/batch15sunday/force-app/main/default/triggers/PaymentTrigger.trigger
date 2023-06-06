trigger PaymentTrigger on payment__c (before insert, after insert, before update, after update, before delete, after delete) {
    // Create a field in Customer object called ‘Total Amount’ - this field should be auto-updated
    // when payments are created/updated/deleted (NO UNDELETE SCENARIO)
    if (trigger.isAfter) {
        if (trigger.isInsert) {
            PaymentTriggerHandler.insertPayment(trigger.new);
        }
        if (trigger.isUpdate) {
            PaymentTriggerHandler.updatePayment(trigger.new, trigger.old);
        }
        if (trigger.isDelete) {
            PaymentTriggerHandler.deletePayment(trigger.old);
        }
 }
}