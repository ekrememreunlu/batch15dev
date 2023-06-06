public class ShoppingCart {
    public String name;
    Map<String, Decimal> shopItems;
    static final Decimal discount = 0.05;

    public ShoppingCart() {
        name = '';
        shopItems = new Map<String, Decimal>();
        System.debug('Hello ' + name + ', we are glad you are here, what would you like to shop today?');
    }

    public ShoppingCart(String n) {
        name = n;
        shopItems = new Map<String, Decimal>();
        System.debug('Hello ' + name + ', we are glad you are here, what would you like to shop today?');
    }

    public string getName(){
        return this.name;
    }
    public void setName(string name){
        this.name = name;
    }

    public void addItem(String itemName) {
        shopItems.put(itemName, 0.0);
    }

    public void addItems(String itemName, Decimal price) {
        shopItems.put(itemName, price);
    }

    public void addItems(Map<String, Decimal> itemsPrice) {
        shopItems.putAll(itemsPrice);
    }

    public String removeItem(String itemName) {
        if (shopItems.containsKey(itemName)) {
            shopItems.remove(itemName);
            return itemName + ' removed successfully';
        }
        else {
            return 'no such item is added in cart, how can I remove it buddy?';
        }
    }

    public Map<String, Decimal> getShopItems() {
        return shopItems;
    }

    public Decimal getTotalAmount() {
        Decimal total = 0.0;
        for (Decimal value : shopItems.values()) {
            total += value;
        }
        if (total > 300) {
            total = total - (total * discount);
        }
        return total;
    }

    public void printSummary() {
        Decimal totalAmount = getTotalAmount();
        Integer itemCount = shopItems.size();
        System.debug('You have added ' + itemCount + ' items in your cart. Each item and its price is below');
        for (String item : shopItems.keySet()) {
            System.debug('Item name \'' + item + '\', its price is ' + shopItems.get(item));
        }
        System.debug('Total value of your cart is ' + totalAmount);
        if (totalAmount < 300) {
            System.debug('Add items worth ' + (300 - totalAmount).setScale(2) + ' to get a bind blowing discount');
        }
        else {
            Decimal finalPrice = totalAmount - (totalAmount * discount);
            Decimal discountAmount = totalAmount * discount;
            System.debug('Final price to pay is ' + finalPrice.setScale(2));
            System.debug('Congratulations, You JUST saved ' + discountAmount.setScale(2) + '.');
        }
    }

    public void clearCart() {
        shopItems.clear();
    }
}
