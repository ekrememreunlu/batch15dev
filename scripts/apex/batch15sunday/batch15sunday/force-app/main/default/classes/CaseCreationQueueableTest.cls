@IsTest
public class CaseCreationQueueableTest {
    @isTest
    static void CaseCreationQueueable(){
        CaseCreationQueueable cq = new CaseCreationQueueable();
        test.startTest();
        id job = system.enqueueJob(cq);
        System.debug(job);
        test.stopTest();

        case listCase = [select id from case];
        assert.areEqual(1, listCase.size());
        
    }


}
