public class PaymentTriggerHandler {
    public static void insertPayment(list<payment__c> pTriggerNew) {
        set<id> customerIds = new set<id>();

        for (payment__c eachPay : pTriggerNew) {
            customerIds.add(eachPay.Customer__c);
        }
        callMethod(customerIds);
    }
    public static void updatePayment(list<payment__c> pTriggerNew, list<payment__c> pTriggerOld) {
        set<id> customerIds = new set<id>();

        for (payment__c eachPay : pTriggerNew) {
            customerIds.add(eachPay.Customer__c);
        }
        for (payment__c eachPay : pTriggerOld) {
            customerIds.add(eachPay.Customer__c);
        }
        callMethod(customerIds);
    }
    public static void deletePayment(list<payment__c> pTriggerOld) {
        set<id> customerIds = new set<id>();

        for (payment__c eachPay : pTriggerOld) {
            customerIds.add(eachPay.Customer__c);
        }
       callMethod(customerIds);
        
    }
    public static void callMethod(Set<id> customerIds) {
        List<customer__c> listCust = [select id, (select amount__c from payments__r) from customer__c where id = :customerIds];
       
        for (customer__c cus : listCust) {
            decimal totalAmount = 0;
            for (payment__c eachPay : cus.payments__r) {
                totalAmount += eachPay.amount__c;
            }
            cus.Total_Amount__c = totalAmount;
        }
        update listCust; 
    }
   
}