public class CalculatorAgain {
    public Integer sumOfPositiveIntegers(Integer n) {
        if (n < 0) {
            System.debug('We are not calculating the sum for negative numbers');
        }
        Integer sum = 0;
        for (Integer i = 1; i <= n; i++) {
            sum += i;
        }
        return sum;
    }
    public void multiplicationTable(Integer n) {
        for (Integer i = 1; i <= 10; i++) {
            System.debug(i + 'x ' + n + ' = ' + (i * n));
        }
    }
    public integer sumOfSquares(Integer n) {
        integer sum = 0;
        for (Integer i = 1; i <= n; i++) {
            sum += (i * i);
        }
        return sum;
    }
}