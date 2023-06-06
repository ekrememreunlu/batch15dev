@isTest
public class OperationHelperTest {
    @IsTest
    private static void testLargestOutOfTwoNumbers() {
        OperationsHelper operationsHelper = new OperationsHelper();

        // Test cases for positive numbers
        System.assertEquals(10, operationsHelper.largestOutOfTwoNumbers(5, 10));
        System.assertEquals(7.5, operationsHelper.largestOutOfTwoNumbers(7.5, 2.3));
        System.assertEquals(0, operationsHelper.largestOutOfTwoNumbers(0, 0));

        // Test cases for negative numbers
        System.assertEquals(-2, operationsHelper.largestOutOfTwoNumbers(-5, -2));
        System.assertEquals(-1.5, operationsHelper.largestOutOfTwoNumbers(-1.5, -3.8));
        System.assertEquals(-1, operationsHelper.largestOutOfTwoNumbers(-1, -1));
    }

    @IsTest
    public static void testSmallestOutOfThreeNumbers() {
        OperationsHelper operationsHelper = new OperationsHelper();

        // Test cases for positive numbers
        System.assertEquals(2, operationsHelper.smallestOutOfThreeNumbers(5, 10, 2));
        System.assertEquals(2.3, operationsHelper.smallestOutOfThreeNumbers(7.5, 2.3, 5.1));
        System.assertEquals(0, operationsHelper.smallestOutOfThreeNumbers(0, 0, 0));

        // Test cases for negative numbers
        System.assertEquals(-5, operationsHelper.smallestOutOfThreeNumbers(-5, -2, -3));
        System.assertEquals(-3.8, operationsHelper.smallestOutOfThreeNumbers(-1.5, -3.8, -2.7));
        System.assertEquals(-1, operationsHelper.smallestOutOfThreeNumbers(-1, -1, -1));
    }

    @IsTest
    public static void testSumOfPositiveInteger() {
        OperationsHelper operationsHelper = new OperationsHelper();

        // Test case for positive number
        System.assertEquals(55, operationsHelper.sumOfPositiveInteger(10));
        System.assertEquals(0, operationsHelper.sumOfPositiveInteger(0));

        assert.isNull(operationsHelper.sumOfPositiveInteger(-1));
        

      
    }
}
