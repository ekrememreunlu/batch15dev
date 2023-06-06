@isTest
public class CalculatorTest {
    @isTest
    public static void testMethod1() {
        calculator c = new calculator();
        c.add(1.1,8.5);
        
    }
    @isTest
    private static void testAddMethod(){
        calculator c = new calculator();
        integer sum = c.add(5,5);

        system.assertEquals(10, sum); //old way
        assert.areEqual(10, sum); //new way
    }
}