trigger LeadTrigger on Lead (before insert) {
    for (Lead l : Trigger.new) {
        if (l.LeadSource == 'Web') {
            l.Rating = 'Cold';
            System.debug('Rating should be Cold');
        } else {
            l.Rating = 'Hot';
            System.debug('Rating should be Hot');
        }
    }
}