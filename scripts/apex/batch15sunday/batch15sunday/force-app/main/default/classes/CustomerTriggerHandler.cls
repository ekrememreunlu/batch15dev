public class CustomerTriggerHandler {
    public static void createPayments(list<Customer__c> cTriggerNew) {
        list<Payment__c> payList = new list<Payment__c>();

        for (customer__c eachCustomer : cTriggerNew) {
            Payment__c newPay = new Payment__c();
            newpay.Amount__c = 0.1;
            newpay.mode__c = 'Online';
            newpay.Customer__c = eachCustomer.id;
            payList.add(newPay);

            Payment__c newPay2 = new Payment__c();
            newPay2.amount__c = 1;
            newPay2.mode__c = 'Crypto';
            newPay2.Customer__c = eachCustomer.id;
            payList.add(newPay2);

            
        }
        insert payList;
    }
    public static void deleteActiveCustomers(List<Customer__c> cTriggerOld) {
        set<id> activeCustomerIds = new set<id>();
        set<id> passiveCustomerIds = new set<id>();
        for (customer__c eachCus : cTriggerOld) {
            if (eachCus.Active__c) {
                activeCustomerIds.add(eachCus.id);
            }
            if (!eachCus.Active__c) {
                passiveCustomerIds.add(eachCus.id);
            }
            
        }
        if (!activeCustomerIds.isEmpty()) {
            list<payment__c> payList = [select id from payment__c where customer__c in :activeCustomerIds];
            if (!payList.isEmpty()) {
                delete paylist;
            }
        }
        if (!passiveCustomerIds.isEmpty()) {
            list<payment__c> payList = [select id from payment__c where customer__c in :passiveCustomerIds and mode__c = 'Online'];
            if (!payList.isEmpty()) {
                delete paylist;
            }
        }

    }
  
}