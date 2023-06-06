trigger CustomerTrigger on customer__c (before insert, after insert, before delete, after delete) {
// 1a)// //Whenever a new Customer is created, create following default Payment records
// // - Amount = $0.1, Mode = Online
// // - Amount = $1, Mode = Crypto

// 1b)Whenever Active Customers are deleted, all the corresponding payments should be deleted
// Whenever In Active Customers are deleted, all the corresponding online payment records
// should be deleted

// 1d)Create a field in Customer object called ‘Total Amount’ - this field should be auto-updated
// when payments are created/updated/deleted (NO UNDELETE SCENARIO).
if (trigger.isInsert) {
    if (trigger.isAfter) {
        CustomerTriggerHandler.createPayments(trigger.new);
    }
}
if (trigger.isBefore) {
    if (trigger.isDelete) {
        CustomerTriggerHandler.deleteActiveCustomers(trigger.old);
    }
}


}