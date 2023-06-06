public class ContactTriggerHandler {
    public static void updateAccountFax(List<Contact> triggerNew, map<id, contact> triggerOldMap) {
        set<id> accIds = new set<id>();
        for (Contact c : triggerNew) {
            if (c.Main_Contact_Person__c && c.Main_Contact_Person__c != triggerOldMap.get(c.id).Main_Contact_Person__c) {
                accIds.add(c.AccountId);
            }
        }
        List<Account> accounts = [SELECT fax, (SELECT id, fax FROM contacts WHERE Main_Contact_Person__c = true LIMIT 1) FROM account WHERE id = :accIds];

        for (account acc : accounts) {
            acc.fax = acc.Contacts[0].fax;
        }
        
        update accounts;
    }
}

// When 'Main Contact Person' is changed to Checked in contact → Update its account's FAX field
// as that contact's FAX Field.
// - Example:
// Account → Name = AccQnC, Fax = 999888777
// Contacts → Name = QnC1 , Main Contact Person = false, Fax = 111222333
// Contacts → Name = QnC2 , Main Contact Person = false, Fax = 111222444
// Contacts → Name = QnC3 , Main Contact Person = false, Fax = 111222555
// Contacts → Name = QnC6 , Main Contact Person = false, Fax = 111222666
// Update QnC6 contact → Main contact person = true
// → Auto update account's FAX to 111222666 (QnC6’s fax value)
// 2. Write the Test class for the triggers and trigger handlers written for the above logic.
        

        // Set<Id> accountIds = new Set<Id>();
        
        // for (Contact eachCon : aTriggerNew) {
        //     accountIds.add(eachCon.AccountId);
        // }
        // List<Account> accountsToUpdate = [select Id, (select Id from Contacts) from Account where Id IN :accountIds];
        
        // for (Account eachAcc : accountsToUpdate) {
        //     if (eachAcc.Contacts.isEmpty()) {
        //         eachAcc.Number_of_contacts__c = 0;
        //     } else {
        //         eachAcc.Number_of_contacts__c = eachAcc.Contacts.size();
        //     }
        // }
        //  if (!accountsToUpdate.isEmpty()) {
        //     update accountsToUpdate;
        // }
    

    




    //which all context variable we need here?
        //new, old or oldMap
    // public static void validateContactUpdate1(
    //     List<contact> cTriggerNew, 
    //     List<contact> cTriggerOld,
    //     Map<id, contact> cTriggerNewMap, 
    //     Map<id, contact> cTriggerOldMap){

    //         for(Contact newContact: cTriggerNew){
    //             //check if existing leadsource was partner referral.
    //                 //newContact.LeadSource can be partner referral. NO error there.
    //                     //BUT
    //                 //old contact's leadsource is Partner referral then throw error.
    //                 Contact oldContact = cTriggerOldMap.get(newContact.Id);
    //                 if(oldContact.LeadSource == 'Partner Referral'){
    //                     newContact.addError('Cannot update contact with lead source as Partner Referral');
    //                 }
    //         }

    // }
    // public static void validateContactUpdate2(
    //     List<contact> cTriggerNew, 
    //     List<contact> cTriggerOld,
    //     Map<id, contact> cTriggerNewMap, 
    //     Map<id, contact> cTriggerOldMap){

    //         for (contact newContact : cTriggerNew) {
    //             if (newContact.leadsource != cTriggerOldMap.get(newContact.id).leadsource) {
    //                 newContact.leadsource.addError('Cannot update leadsource');
    //             }
    //         }
    //     }


