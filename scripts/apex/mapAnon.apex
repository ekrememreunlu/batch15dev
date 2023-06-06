//MapDemo.mapStringInteger();


//map of string, string
map<string, string> mapCC = new map<string, string>();
mapCC.put('USA', 'Dollar');
mapCC.put('France', 'Euro');
mapCC.put('Portugal', 'Euro');
mapCC.put('India', 'Rupees');//we added this first
mapCC.put('India', 'Rupee');//then we added same key, another value, it will update the value it KEY exists
mapCC.put('Turkiye', 'Lira');
mapCC.put('El Salvador', 'Bitcoin');
mapCC.put('usa','usd');
mapCC.put('El Salvador', 'BTC');//updates value
system.debug(mapCC);

//get value from map using KEY. method is .get(key)
string currUSA = mapCC.get('USA');
string currIndia = mapCC.get('India');
system.debug(currIndia);
string country = 'Turkiye';
string curr = mapcc.get(country);
system.debug(country + ' curency is ' + curr);
