Map<Integer,String> sehirPlaka = new Map<Integer,String>();
sehirPlaka.put(34, 'İstanbul');
sehirPlaka.put(16, 'Bursa');
sehirPlaka.put(35, 'İzmir');
sehirPlaka.put(42, 'Konya');
sehirPlaka.put(27, 'Gaziantep');
System.debug(sehirPlaka);
system.debug('İstanbul var mi? ' +sehirPlaka.containsKey(34));
system.debug('Trabzon var mi? ' +sehirPlaka.containsKey(61));

system.debug('Mapin eleman sayisi: ' +sehirPlaka.size());
sehirPlaka.remove(16);
System.debug('16 nolu plaka cikinca: ' +sehirPlaka);

Set<Integer> plaka = new Set<Integer>();
plaka = sehirPlaka.keySet();
System.debug('Plakalar => ' + plaka);

List<String> sehirler = new List<String>();
sehirler = sehirPlaka.values();
System.debug('Sehirler => '+ sehirler);

List<Object> combinedList = new List<Object>();
List<Integer> plakaList = new List<Integer>(plaka);

for (Integer i = 0; i < plakaList.size(); i++) {
    combinedList.add(sehirler[i]);
    combinedList.add(plakaList[i]);
}

System.debug('Şehirler ve plakalar => ' + combinedList);










