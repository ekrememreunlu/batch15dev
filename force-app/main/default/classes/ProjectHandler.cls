public class ProjectHandler {
    @future
    public static void updateProject(set<id> taskIds) {
        list<task__c> completedTasks = [select id, project__c, (select id, time_logged__c from timelogs__r) from task__c where id =:taskIds];
    }
}