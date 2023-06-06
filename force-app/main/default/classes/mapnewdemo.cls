public  class mapnewdemo {
    public static void mapExample2() {
        //items -> price
        map<string, decimal> map2 = new map<string, decimal>();
        map2.put('apple', 5.5);
        map2.put('pen', 10.5);
        map2.put('shirt', 50.5);
        map2.put('laptop', 1500.00);
        system.debug('map2 is ' + map2);

        //prepare two maps.
        //1. all items and its prices whose values are less than 100
        //2. all items and its prices whose values are more than 100

        map<string, decimal> lowerMap = new map<string, decimal>();
        map<string, decimal> higherMap = new map<string, decimal>();

        set<string> allItems = map2.keySet();

        for (string eachItem : allItems) {
            //get value of each Item
            //eachItem => laptop
            //eachPrice => 1500
            decimal eachPrice = map2.get(eachItem);
            if (eachPrice > 100) {
                //      key -> laptop, value -> 1500
                higherMap.put(eachItem, eachPrice);
                system.debug('HIGHER: ' + eachItem + ' --> ' + eachPrice);
            } else {
                lowerMap.put(eachItem, eachPrice);
                system.debug('LOWER: ' + eachItem + ' --> ' + eachPrice);
            }
        }
        system.debug('higher map is ' + higherMap);
        system.debug('lower map is ' + lowerMap);
    }

    public static string retrieveMonth(integer m){
        string month = '';

        Map<Integer,String> monthMap = new Map<Integer,String>{ 1 => 'January', 2 => 'February', 3 => 'March', 4 => 'April', 5 => 'May', 6 => 'June', 7 => 'July', 8 => 'August', 9 => 'September', 10 => 'October', 11 => 'November', 12 => 'December' };
        

        Boolean keyExist = monthMap.containsKey(m);
        if (keyExist) {
            month = monthMap.get(m);
        }else {
            month = 'No such month exist';
        }

    
        return month;

    }
}