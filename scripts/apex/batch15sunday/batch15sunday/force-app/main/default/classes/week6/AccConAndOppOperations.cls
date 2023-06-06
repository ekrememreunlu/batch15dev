public class AccConAndOppOperations{
    
    public static List<account> getAllAccounts() {
        return [SELECT Name, AnnualRevenue, Type, AccountSource FROM Account];
    }
    public static List<Opportunity> findOpportunities(String leadSource, String stageName) {
        return [SELECT Name, Amount FROM Opportunity WHERE LeadSource = :leadSource AND StageName = :stageName];
    }
    public static void printAccountAndOpportunities() {
        List<Account> accounts = [SELECT Name, AnnualRevenue FROM Account WHERE Type = 'Customer - Direct'];
        for(Account acc : accounts) {
            System.debug('Account Name: ' + acc.Name + ', Annual Revenue: ' + acc.AnnualRevenue);
            List<Opportunity> opps = [SELECT Name, Amount FROM Opportunity WHERE AccountId = :acc.Id AND StageName = 'Closed Won'];
            for(Opportunity opp : opps) {
                System.debug('Opportunity Name: ' + opp.Name + ', Amount: ' + opp.Amount);
            }
        }
    }
    public static Account createAccount(String name, Decimal annualRevenue, String type) {
        Account acc = new Account();
        if(name == null || name == '') {
            System.debug('Account without name cannot be created.');
            return null;
        }
        acc.Name = name;
        acc.AnnualRevenue = annualRevenue;
        acc.Type = type;
        insert acc;
        return acc;
    }
    public Decimal getSumClosedWonOpptyAmount() {
        AggregateResult result = [SELECT SUM(Amount) FROM Opportunity WHERE StageName = 'Closed Won' and amount !=null];
        decimal sum = (Decimal) result.get('expro0');
        return sum;
    }
    public static List<Account> getAccountsByOpptyStage(String stageName) {
        List<Account> accList = [SELECT Id, Name FROM Account WHERE Id IN (SELECT AccountId FROM Opportunity WHERE StageName = :stageName)];
        return accList;
    }
    public static List<Account> getAccountsWithContacts() {
        List<Account> accList = [SELECT Id, Name FROM Account WHERE Id IN (SELECT AccountId FROM Contact)];
        return accList;
    }

    
}
