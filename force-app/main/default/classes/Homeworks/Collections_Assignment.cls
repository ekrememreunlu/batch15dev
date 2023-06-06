public class Collections_Assignment {
    public static void listMethods() {
        List<string> dayList = new List<string>{'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'};
        System.debug(dayList);

        dayList.add('Sunday');
        System.debug('After add new day: ' +dayList);

        List<string> newdays = new List<string>{'pazartesi', 'sali', 'carsamba'};
        dayList.addAll(newdays);
        System.debug('After add all from list: ' +dayList);

        System.debug('After clone: ' +daylist.clone());

        Boolean check = dayList.contains('Monday');
        System.debug('Does list contains Monday? ' +check );

        dayList.clear();
        System.debug('Clear list: ' +dayList);

        List<String> anotherDayList = new List<String>{'Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'};
        Boolean check2 = dayList.equals(anotherDayList);
        System.debug('Does list equal? ' +check2 );

        string day = anotherDayList.get(2);
        System.debug('İndex of 2 is : ' +day);

        Integer hash = anotherDayList.hashCode();
        System.debug('After hashCode: ' + hash);

        integer index = anotherDayList.indexOf('Tuesday');
        System.debug('Index of tuesday is: ' +index);

        Boolean empty = anotherDayList.isEmpty();
        System.debug('Is list empty?' +empty);

        string removeDay = anotherDayList.remove(1);
        System.debug('After remove: ' +removeDay);

        anotherDayList.set(1, 'New Day');
        System.debug('After set: ' +anotherDayList);

        Integer size = anotherDayList.size();
        System.debug('Size of list: ' + size);

        anotherDayList.sort();
        System.debug('After sort: ' +anotherDayList);
    }
    public static void setMethods(){
        Set<string> daySet= new Set<string>{'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'};
        System.debug(daySet);

        daySet.add('Sunday');
        System.debug('After add new day: ' +daySet);

        Set<string> newDayset = new Set<string>{'MONDAY', 'TUESDAY', 'Wednesday'};
        daySet.addAll(newDayset);
        System.debug('After add all from set: ' +daySet);

        System.debug('After clone: ' +daySet.clone());

        Boolean check2 = daySet.contains('Monday');
        System.debug('Does Set contains Monday? ' +check2 );

        daySet.clear();
        System.debug('Clear Set: ' +daySet);

        Set<String> anotherDaySet = new Set<String>{'Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'};
        Boolean check3 = daySet.equals(anotherDaySet);
        System.debug('Does Set equal? ' +check3 );



        Integer hash2 = anotherDaySet.hashCode();
        System.debug('After hashCode: ' + hash2);

      

        Boolean empty2 = anotherDaySet.isEmpty();
        System.debug('Is Set empty?' +empty2);



        Integer size2 = anotherDaySet.size();
        System.debug('Size of Set: ' + size2);

       
    }
}
