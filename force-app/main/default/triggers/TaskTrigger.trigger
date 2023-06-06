trigger TaskTrigger on Task__c (after update, after insert) {
    if (trigger.isUpdate && trigger.isAfter) {
        Set<Id> taskIds = new Set<Id>();
        Set<Id> projectIds = new Set<Id>();
        for (task__c ts : Trigger.New) {
            if (ts.status__c == 'Completed' && Trigger.OldMap.get(ts.id).status__c != 'Completed') {
                taskIds.add(ts.id);
                projectIds.add(ts.project__c);
                
            }
        }
        if (taskIds.isEmpty()) {
            ProjectHandler.updateProject(taskIds);
        }
    }

}