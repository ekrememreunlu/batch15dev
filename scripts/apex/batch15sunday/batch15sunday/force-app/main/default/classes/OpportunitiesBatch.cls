public class OpportunitiesBatch implements Database.Batchable<sObject>, Database.Stateful {
    integer countRecords = 0;
    public Database.QueryLocator start(Database.BatchableContext BC) {
        return Database.getQueryLocator([SELECT Id, stageName FROM Opportunity where stageName = 'Closed Lost']);
    }

    public void execute(Database.BatchableContext BC, List<Opportunity> scope) {
        countRecords += scope.size();
        delete scope;
    }

    public void finish(Database.BatchableContext BC) {
        system.System.debug('Total number of deleted opp' +countRecords);
    }

}