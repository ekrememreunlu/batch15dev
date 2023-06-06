InventoryManager product1 = new InventoryManager();
InventoryManager product2 = new InventoryManager();
InventoryManager product3 = new InventoryManager('Laptop', 'LT001');
InventoryManager product4 = new InventoryManager('Phone', 'PH001');
InventoryManager product5 = new InventoryManager('Headphones', 'HD001');

product1.setCostPrice(50);
product1.setSellingPrice(60);

product2.setCostPrice(100);
product2.setSellingPrice(120);

product3.setCostPrice(500);
product3.setSellingPrice(600);

product4.setCostPrice(200);
product4.setSellingPrice(220);

product5.setCostPrice(50);
product5.setSellingPrice(55);

product1.productDisplay();
product2.productDisplay();
product3.productDisplay();
product4.productDisplay();
product5.productDisplay();

System.debug('Total Products Created: ' + InventoryManager.getProductCount());