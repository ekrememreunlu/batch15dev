public class Queueable15first implements Queueable{
    //Queuable1=> Accountlardan Annual Revenuesi 10000 olanlara birer contact create edip bağlayalım.
    Public List<Account> accList = [select id, name from account where AnnualRevenue = 10000];
    public void execute(QueuableContext context){
        System.debug('Queuable first calisti..');
        List<Contact> conList = new List<Contact>();
        if (!accList.isEmpty()) {
            for (account acc : accList) {
                contact con = new contact();
                con.LastName = 'Contact ' + accList.indexOf(acc);
                con.AccountId = acc.id;
                conList.add(con);
            }
            insert conList;
        }

    }
}