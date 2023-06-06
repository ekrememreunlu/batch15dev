public class Trigger_Map {
    public static Id InsertSF_Project() {
        salesforce_project__c sp = new salesforce_project__c();
        sp.Project_Name__c = 'Sp Project 1';
        insert sp;
        return sp.id;
        
    }
    public static void UpdateSF_Project(id id, string name) {
        salesforce_project__c sf = [select id, name from salesforce_project__c where id = :id];

        sf.Project_Name__c = name;
        update sf;

    }
}