public class Decimal_Assignment {
    public void decimalMethods() {
        string s1 =  '123.456789';
        decimal d1 = decimal.valueOf(s1);
        decimal d2 = d1.setScale(2);

        System.debug(s1);
        System.debug(d1);
        System.debug(d2);
       

    }
}