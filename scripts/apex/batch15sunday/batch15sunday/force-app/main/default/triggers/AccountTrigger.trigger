trigger AccountTrigger on account (before update) {
    // for(Account acc : Trigger.new) {
    //     if(acc.AnnualRevenue < Trigger.oldMap.get(acc.Id).AnnualRevenue) {
    //         System.debug('Annual Revenue for an account cannot be reduced');
    //     }
    // }
    List<Account> hotAccounts = new List<Account>();
    for(Account acc : Trigger.new) {
        if(acc.Rating == 'Hot' && Trigger.oldMap.get(acc.Id).Rating != 'Hot') {
            Integer oppCount = [SELECT COUNT() FROM Opportunity WHERE AccountId = :acc.Id];
            if(oppCount > 3) {
                hotAccounts.add(acc);
            }
        }
    }
    if(!hotAccounts.isEmpty()) {
        for(Account acc : hotAccounts) {
            System.debug('Account is NOW HOT! And it has ' + [SELECT COUNT() FROM Opportunity WHERE AccountId = :acc.Id] + ' opportunities.');
        }
    }
}