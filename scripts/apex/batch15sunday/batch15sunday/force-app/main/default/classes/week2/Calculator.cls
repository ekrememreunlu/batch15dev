public class Calculator {
    public decimal dynamicCalulationMethod(decimal num1, decimal num2, string operation) {
        decimal result = 0;
        if (operation == 'ADDITION') {
            result = num1+num2;
        }else if (operation == 'SUBTRACTION'){
            result = num1 - num2;
        } else if (operation == 'DIVISION') {
            result = num1 / num2;
        } else if (operation == 'MULTIPLICATION') {
            result = num1 * num2;
        }
        return result;
        
    }
    public decimal calculateDiscount (decimal totalPrice){
        decimal discount = 0;
        if (totalPrice >= 1000) {
            discount = 0.25;
        } else if (totalPrice >= 800) {
            discount = 0.15;
        } else if (totalPrice >= 500) {
            discount = 0.10;
        } else if (totalPrice >= 100) {
            discount = 0.05;
        }
        System.debug('Discount is: ' +discount);
        return discount;
    }

    public decimal calculateNetPrice (integer quantity, decimal rate){
        decimal totalPrice = rate * quantity;
        decimal discount = calculateDiscount(totalPrice);
        decimal discountPrice = totalPrice * discount;
        decimal netPrice = totalPrice - discountPrice;

        System.debug('Total Price: ' + totalPrice);
        System.debug('Discount Price: ' + discountPrice);
        System.debug('Net Price: ' +netPrice);

        return netPrice;

    }
}