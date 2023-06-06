Map<String, List<Decimal>> cityTemps = new Map<String, List<Decimal>>();
cityTemps.put('New York', new List<Decimal>{10.5, 12.3, 8.9, 9.1, 10.2, 11.7, 13.5});
cityTemps.put('London', new List<Decimal>{9.8, 11.2, 10.1, 8.5, 7.9, 10.3, 11.9});
cityTemps.put('Paris', new List<Decimal>{8.7, 10.5, 11.3, 9.8, 9.2, 10.1, 12.4});
cityTemps.put('Amsterdam', new List<Decimal>{14.2, 13.9, 15.6, 13.8, 12.5, 14.1, 13.6});
cityTemps.put('Istanbul', new List<Decimal>{18.5, 19.2, 20.1, 17.9, 16.8, 18.7, 19.4});

System.debug(cityTemps);

List<String> above10 = new List<String>();
List<String> below10 = new List<String>();

for (String city : cityTemps.keySet()) {
    List<Decimal> temps = cityTemps.get(city);
    Decimal avgTemp = 0.0;
    for (Decimal temp : temps) {
        avgTemp += temp;
    }
    avgTemp /= temps.size();
    if (avgTemp > 10) {
        above10.add(city);
    } else {
        below10.add(city);
    }
}

System.debug('Sicaklik ortalamasi 10 derecenin uzerindeki sehirler: ' + above10);
System.debug('Sicaklik ortalamasi 10 derecenin altindaki sehirler: ' + below10);
