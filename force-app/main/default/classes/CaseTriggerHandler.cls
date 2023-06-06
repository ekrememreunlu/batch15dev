public class CaseTriggerHandler {
    public static void updateEmailStatusPririty(list<case>TriggerNew) {
        for (case c : TriggerNew) {
            if (c.Origin == 'Email') {
                c.Status = 'New';
                c.Priority = 'Medium';
            }
        }
    }

    public static void securityCheck(list<case>TriggerNew) {
        list<case> newCases = new list<case>();
        for (case c : TriggerNew) {
            if (c.Description.containsIgnoreCase('password')) {
                // System.debug('passed desc check');
                case newC = new case();
                newC.subject='Parent case may contain secret info, do something NOW';
                newC.ParentId = c.id;
                newC.Priority = 'High';
                newC.Description = 'Secret info not allowed in case';
                newCases.add(newC);
            }
        }
        insert newCases;
    }
}