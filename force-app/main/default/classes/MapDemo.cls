public with sharing class MapDemo {
    public static void mapStringInteger() {
        //string is key
        //value is integer
        Map<String,Integer> map1 = new Map<String,Integer>();
        map1.put('one', 101);
        map1.put('two', 202);
        map1.put('three', 303);
        map1.put('one', 1001);
        System.debug(map1);

    }
}