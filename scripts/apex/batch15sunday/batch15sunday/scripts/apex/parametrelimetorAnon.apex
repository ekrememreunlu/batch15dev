ParametreliMetotlar pm = new ParametreliMetotlar();
pm.printWelcome();
pm.welcomePerson('Emre');
pm.welcomePerson('Merve');
integer sum = pm.toplama(11, 22);
System.debug(sum);

System.debug(pm.toplama(11, 22));

date dt1 = date.newInstance(2022, 07, 11);
boolean sonuc = pm.artikYil(dt1);
System.debug(sonuc);

ParametreliMetotlar pm2 = new ParametreliMetotlar();
integer uzunlk = pm2.uzunluk('bugun hava guzel');
System.debug('bugun hava guzel cumlesinin karakter uzunlugu: '+uzunlk);
