Circle c1 = new Circle();
system.debug('Bos constructor: ' +c1);
c1.setRadius(4.5);
c1.setColor('Red');
system.debug('Renk: ' +c1.getColor() + ' Radius: ' +c1.getRadius() + ' Alani: ' +c1.calculateArea() + ' Cevresi: ' +c1.calculateCircumference());

Circle c2 = new Circle(5.5);
system.debug('İkinci constructor: ' +c2);
c2.setRadius(6.5);

system.debug(' Radius: ' +c2.getRadius() + ' Alani: ' +c2.calculateArea() + ' Cevresi: ' +c2.calculateCircumference());

Circle c3 = new Circle(5.5 , 'White');
system.debug('Ucuncu constructor: ' +c3);

system.debug('Renk: ' +c3.getColor() + ' Radius: ' +c3.getRadius() + ' Alani: ' +c3.calculateArea() + ' Cevresi: ' +c3.calculateCircumference());