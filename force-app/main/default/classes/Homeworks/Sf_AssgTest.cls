@IsTest
public class Sf_AssgTest {
    @IsTest
        static void testInsertSf() {
       
        List<Salesforce_Project__c> lstsf = new List<Salesforce_Project__c>();
        for (Integer i = 0; i < 10; i++) {
            Salesforce_Project__c varsf = new Salesforce_Project__c();
            varsf.Project_Name__c = 'Phone23';
            lstsf.add(varsf);
        }

        Sf_Assg.insertSf();

        List<Salesforce_Project__c> insertedRecords = [SELECT Id, Project_Name__c FROM Salesforce_Project__c WHERE Project_Name__c = 'Phone23'];
        System.assertEquals(10, insertedRecords.size());
        for (Salesforce_Project__c record : insertedRecords) {
            System.assertEquals('Phone23', record.Project_Name__c);
        }
    }

    @IsTest
        static void testUpdateSf() {
        // Create test data
        List<Salesforce_Project__c> lstsf = new List<Salesforce_Project__c>();
        Salesforce_Project__c varsf = new Salesforce_Project__c();
        varsf.Project_Name__c = 'Phone23';
        lstsf.add(varsf);

       
        insert lstsf;

        Sf_Assg.updateSf();
       

        List<Salesforce_Project__c> updatedRecords = [SELECT Id, Project_Name__c FROM Salesforce_Project__c WHERE Project_Name__c = 'Phone2'];
        System.assertEquals(1, updatedRecords.size());
        for (Salesforce_Project__c record : updatedRecords) {
            System.assertEquals('Phone2', record.Project_Name__c);
        }
    }
}