public class ListDemo2 {
    public static void iterateList(){
         List<integer> intList = new list<integer>();
         intList.add(90);
         intList.add(15);
         intList.add(77);
         intList.add(21);
         intList.add(15);
         intList.add(15);
         intList.add(90);
         intList.add(15);
         intList.add(77);
         intList.add(21);
         intList.add(15);
         intList.add(15);
         system.debug(intList);
 
         // 5 x 90 = 450
         // 5 x 15
         // 5 x 77
 
         //print each element one by one form the list
         //integer eachNumber ==> integer because list is of integer
                 //eachNumber is variable name we will use inside for loop
         for( integer eachNumber  : intList){
             //system.debug(eachNumber*5);//this works just fine. 
 
             system.debug('5 x '+ eachNumber + ' = ' + eachNumber*5);
             //system.debug(eachNumber);
         }
    }
 
    public static integer add(List<integer> l1){
         integer sum = 0;
         system.debug(l1);
         for (integer eachNum : l1) {
           sum += eachNum;
         }
         return sum;
    }
    public static void iterateListString(List<String> l2){
        System.debug(l2);
        for (string eachString : l2) {
            System.debug(eachString +' its lenght is ' + eachString.length());
        }
    }

    public static string add(List<String> l2){
        string finalString = '';
        for (string eachString : l2) {
            finalString += eachString + '||';
        }
        finalString = finalString.removeEnd('||');
        return finalString;
        
    }

    public static void iterateListString99(){
        List<String> ls = new List<String>{'list', 'set', 'map', 'array'};
        ls.add('meyhods');
        ls.add('constructor');

        List<String> newLS = new List<String>();

        for (string eachStr : ls) {
            string temp = 'lenght of '+eachStr + ' - ' +eachStr.length();
            newLS.add(eachStr);
            newLS.add(temp);
            
        }
        System.debug(newLS);


    }
 }