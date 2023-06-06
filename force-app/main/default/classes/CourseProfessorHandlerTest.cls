@IsTest
private class CourseProfessorHandlerTest {
    @TestSetup
    static void prepareData(){
        Admission_Officer__c officer = new Admission_Officer__c(Name= 'Test Officer',
        Email__c = 'testemail@test.com', Phone__c = '004353453543');
        insert officer;

        Course__c course = new Course__c(admission_officer__c = officer.id, Name__c = 'Test course', Start_Date_Time__c = datetime.now().addDays(1), Max_Seats__c = 10
        );

        insert course;

        Professor__c prof = new Professor__c(Name = 'Test Proffesor', Email__c = 'testprof@test.com', phone__c = '09809340953');

        insert prof;

        Course_Professor__c courseProf = new Course_Professor__c(course__c = course.id, professor__c = prof.id);

        insert courseProf;


    }

    @isTest
    static void testSuccess(){
        Course_Professor__c systemRecord = [select course__c, Professor__c from Course_Professor__c limit 1];

        test.startTest();
        try {
            insert new Course_Professor__c(course__c = systemRecord.course__c, professor__c = systemRecord.professor__c);
            
        } catch (Exception exc) {
            
        }
        test.stopTest();

        integer systemCount = [select count() from course_professor__c];
        system.assertEquals(1, systemCount);

    }
   
}
