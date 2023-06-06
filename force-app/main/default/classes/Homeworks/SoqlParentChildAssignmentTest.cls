@IsTest
public class SoqlParentChildAssignmentTest {
    @IsTest
    public static void testPrintContactAccounts() {

        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;

        Contact testContact = new Contact(
            FirstName = 'John',
            LastName = 'Doe',
            AccountId = testAccount.Id
        );
        insert testContact;

        Test.startTest();
        SoqlParentChildAssignment.printContactAccounts();
        Test.stopTest();
   
    }
    @IsTest
    public static void testPrintAccountContacts() {
       
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;

        Contact testContact = new Contact(
            FirstName = 'John',
            LastName = 'Doe',
            AccountId = testAccount.Id
        );
        insert testContact;

        Test.startTest();
        SoqlParentChildAssignment.printAccountContacts();
        Test.stopTest();

    }
}