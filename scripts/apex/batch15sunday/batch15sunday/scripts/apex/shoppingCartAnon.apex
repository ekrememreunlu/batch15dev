Decimal discount = 0.05;
ShoppingCart cart = new ShoppingCart();
System.debug('Hello, we are glad you are here, what would you like to shop today?');

cart.setName('Donald Duck');

cart.addItem('chips');

cart.addItems('cookies', 9.99);
cart.addItems('pancake', 10.20);

Map<String, Decimal> items = new Map<String, Decimal>{'ketchup' => 5.55, 'tea' => 6.00};
cart.addItems(items);

System.debug(cart.getShopItems());

Decimal total = cart.getTotalAmount();
System.debug('Total value of cart is ' + total);

System.debug('You have added ' + cart.getShopItems() + ' items in your cart. Each item and its price are below:');
for (String itemName : items.keySet()) {
    System.debug('Item name \'' + itemName + '\', its price is ' + items.get(itemName));
}
System.debug('Total value of your cart is ' + total);

cart.addItems('expensive item', 268.26);
total = cart.getTotalAmount() * (1 - discount);
System.debug('Final price to pay is ' + total);
System.debug('Congratulations, you JUST saved ' + (cart.getTotalAmount() - total));

cart.clearCart();

System.debug(cart.getShopItems());

