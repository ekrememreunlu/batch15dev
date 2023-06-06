trigger CourseProfessorTrigger on Course_Professor__c (before insert, before update) {
    if (trigger.isBefore ) {
        if (trigger.isInsert || trigger.isUpdate) {
            CourseProfessorHandler.rejectDuplicate(trigger.new);
        }
    }

}