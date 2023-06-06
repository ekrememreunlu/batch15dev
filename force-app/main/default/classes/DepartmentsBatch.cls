public class DepartmentsBatch implements Database.Batchable<sObject> {
    
        public Database.QueryLocator start(Database.BatchableContext BC) {
            System.debug('inside start method');
            return Database.getQueryLocator([select id, number_of_employees__c, (select id from employees__r) from department__c]);
        }
    
        public void execute(Database.BatchableContext BC, List<department__c> scopeDep) {
            System.debug('inside execute method');
            for (department__c eachDep : scopeDep) {
                if (eachDep.employees__r!= null) {
                    eachDep.number_of_employees__c = eachDep.employees__r.size();
                }
            }
        }
    
        public void finish(Database.BatchableContext BC) {
            System.debug('finish');
        }
    
    }

  