List<Contact> lstContact = [Select Id, Name, Account.Name from Contact Where Account.Name in ('Apple', 'Meta', 'Tesla', 'Microsoft')];

System.debug('----- Accounts ID and Names -----');
for(Contact con : lstContact) {
    System.debug('Account ID: ' + con.AccountId + ' - Account Name: ' + con.Account.Name);
}

List<Account> lstAccount = [select Id, Name, (select Id, Name from Contacts) from Account Where Name in ('Apple', 'Meta', 'Tesla', 'Microsoft')];

for(Account acc : lstAccount) {
    System.debug('--------------------------------------------------------------------');
    System.debug('Account ID: ' + acc.Id + ' - Account Name: ' + acc.Name);
    System.debug('--------------------------------------------------------------------');
    System.debug('----Contacts of ' +acc.name +' ------');
    for(Contact con : acc.Contacts) {
        System.debug('Contact ID: ' + con.Id + ' - Contact Name: ' + con.Name);
    }
}



