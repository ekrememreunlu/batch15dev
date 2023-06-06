List<String> listCity = new List<String>{'Madrid', 'Amsterdam', 'İstanbul', 'New York', 'Paris', 'Toronto'};
system.debug(listCity);
system.debug('Listenin eleman sayisi: ' +listCity.size());

system.debug('Listenin ilk elemani: ' +listCity.get(0) +' Son elemani: ' +listCity.get(5));
system.debug('Listede İstanbul var mi? ' +listCity.contains('İstanbul') +' || Roma var mi? '+ listCity.contains('Roma'));

List<String> City = new List<String>();
for (string eachCity: listCity){
    string addCity = eachCity+ ' city';
    city.add(addCity);
}

system.debug('City eklenince: ' +City);

Set<String> setCity = new Set<String>();
setCity.addAll(listCity);
System.debug('setCity: '+setCity);

setCity.remove('Paris');
system.debug('Paris sehri cikarilinca: ' +setCity);

setCity.add('İstanbul');
setCity.add('Madrid');
System.debug('Yeni set: ' +setCity + ' Eleman sayisi: ' +setCity.size());

setCity.clear();
system.debug('Setin elemanlari silindi mi? ' +setCity.isEmpty());




