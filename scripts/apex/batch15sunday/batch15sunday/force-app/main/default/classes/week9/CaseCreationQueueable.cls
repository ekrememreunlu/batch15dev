public class CaseCreationQueueable implements Queueable {
    public void execute(QueueableContext context) {
        Case newCase = new Case();
        newCase.Origin = 'Web';
        newCase.Subject = 'Test Case';
        newCase.Description = 'This is a test case created by Queueable Apex';
        newCase.Status = 'New';
        
        insert newCase;
    }
}