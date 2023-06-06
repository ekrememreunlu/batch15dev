pizzaClass p = new pizzaClass();
system.debug(p);

p.addCart(2, 'paneer', 'pan pizza');
system.debug(p);
p.cancelCart();
system.debug(p);
p.feedback('it was good');