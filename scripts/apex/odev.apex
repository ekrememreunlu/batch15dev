MathPractice cvr = new MathPractice();
System.debug('Diktortgenin cevre uzunlugu: ' +cvr.practiceOne(12.58, 15.88));



























date bugun = date.today();
date marieBirth = date.newInstance(1867, 11, 7);
System.debug('Bugunun tarihi: ' +bugun + ' --- ' +'Marie Curie\'nin dogum tarihi: '+ marieBirth);

integer farkGun = marieBirth.daysBetween(bugun);
System.debug('Farkin gun dikkate alinarak hesaplanmasi: ' +farkGun);

integer farkAy = marieBirth.monthsBetween(bugun);
System.debug('Farkin ay dikkate alinarak hesaplanmasi: ' +farkAy);

integer a = marieBirth.year();
integer b = bugun.year();
integer farkYil = b - a;
System.debug('Farkin yil dikkate alinarak hesaplanmasi: '+farkYil);

Boolean checkDate = date.isLeapYear(a);
System.debug('Marie Curie\'nin dogum tarihi artik yil mi?: ' + checkDate);



date mybirthDate = date.newInstance(1986, 2, 11);
System.debug('Dogum tarihim: ' +mybirthDate);

integer yil = mybirthDate.year();
integer ay = mybirthDate.month();
integer gun = mybirthDate.day();
integer sum = yil + ay + gun;
System.debug('Dogum tarihimin toplami: '+sum);