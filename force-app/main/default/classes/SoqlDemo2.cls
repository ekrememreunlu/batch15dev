public class SoqlDemo2 {
    public static void accountContactSOQL() {
        List<contact> listCon = [select id, name, account.name, account.AnnualRevenue, account.industry, accountid from contact];
        for (contact eachContact : listCon) {
            System.debug('contact name is ' +eachContact.Name);
            string accName = eachContact.account.name;
           
            System.debug('account name is ' +accName + ', acc industry is ' +eachContact.Account.industry);

            decimal accRevenue = eachContact.account.AnnualRevenue;
            System.debug('account revenue is ' +accRevenue);
            System.debug('----------');
        }
    }
    public static void childToParent2() {
        list<Salesforce_Ticket__c> listST =[select id, name, subject__c, status__c, salesforce_project__c, salesforce_project__r.status__c, salesforce_project__r.project_name__c from salesforce_ticket__c];
        //PRINT ticket name and project name only for those records where project status is new
        for (Salesforce_Ticket__c eachST : listST) {
            if (eachST.salesforce_project__r.status__c == 'New') {
                System.debug('ticketg name is ' +eachST.subject__c + ', its project name is ' +eachST.salesforce_project__r.project_name__c);
            }
        }
    }
}