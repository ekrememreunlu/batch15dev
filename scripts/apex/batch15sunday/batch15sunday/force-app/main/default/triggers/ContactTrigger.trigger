trigger ContactTrigger on Contact (after insert) {
    for (Contact c : Trigger.new) {
        if (c.AccountId != null) {
            System.debug(c.FirstName + ' ' + c.LastName + ' contact created WITH Account.');
        } else {
            System.debug(c.FirstName + ' ' + c.LastName + ' contact created WITHOUT Account.');
        }
    }
}