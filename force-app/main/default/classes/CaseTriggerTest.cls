@isTest
public class CaseTriggerTest {
    @isTest
    private static void securityCheckTest() {
        list<case> ls = new list<case>();
        for (Integer i = 0; i < 5; i++) {
            case c = new case();
            if (i == 0) {
                c.Description = 'no p';
            }else {
                c.Description = 'password';
            }
            ls.add(c);
        }
        test.startTest();
        insert ls;
        test.stopTest();

        list<case> insertedCases = [select id, description from case];
        list<case> passwordCases = [select id, description, (select id, parentid, priority, description from cases) from case where description = 'password'];

        assert.areEqual(9, insertedCases.size());
        assert.areEqual(4, passwordCases);
        for (case pc : passwordCases) {
            assert.areEqual(1, pc.Cases.size());
        }

        
    }
}