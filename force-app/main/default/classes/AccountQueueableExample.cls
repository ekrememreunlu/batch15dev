public class AccountQueueableExample implements Queueable{
    public list<account> accList;
    public AccountQueueableExample(list<account> accList) {
        this.accList = accList;
    }
    public void execute(QueueableContext context){
        for (account acc : accList) {
            acc.name = acc.name + '-- SI';
        }
        update accList;
    }
}