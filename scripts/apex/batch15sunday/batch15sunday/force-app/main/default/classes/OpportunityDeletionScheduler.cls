public class OpportunityDeletionScheduler implements Schedulable {
    public void execute(SchedulableContext sc){
        OpportunitiesBatch ob = new OpportunitiesBatch();
        Database.executeBatch(ob,20);
    }
}