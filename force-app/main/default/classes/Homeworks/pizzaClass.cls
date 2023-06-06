public class pizzaClass {
    Integer orderId = 0;
    Integer quantity;
    String toppings;
    String type;
    Decimal tax;
    String feedback;
    
    public void addCart(Integer quantity, String toppings, String type) {
        this.orderId++;
        this.quantity = quantity;
        this.toppings = toppings;
        this.type = type;
        
        if (quantity == 1) {
            tax = 0.18;
        } else if (quantity == 2) {
            tax = 0.12;
        } else if (quantity == 3) {
            tax = 0.06;
        } else if (quantity > 4) {
            tax = 0;
        }
    }
    
    public void cancelCart() {
        orderId = 0;
    }
    
    public void feedback(String feedback) {
        System.debug('feedback: '+feedback);
    }
}