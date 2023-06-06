public class ListDemo {
    public static void candidatesList() {
      List<String>listC = new List<String>();
        system.debug(listC);
        listC.add('Marc');
        listC.add('Bill');
        listC.add('Kunal');
        listC.add('Marc');
        system.debug('list of candidates: '+listC);
    }
    public static void rendomIntegerList(){
        List<Integer> intList = new List<Integer>();
        intList.add(90);
        intList.add(15);
        intList.add(77);
        intList.add(21);
        intList.add(15);
        intList.add(15);
        System.debug(intList);
        integer size = intList.size();
        System.debug('size of list is: ' +size);

        integer int3 = intList.get(3);

        Integer int31 = intList[3];
        System.debug('int3 is ' +int3);
        System.debug('int31 is ' +int31);
    }
    public static string candidatesList(integer i){
    string returnValue = '';
    List<String>listC = new List<String>();
    system.debug(listC);
    listC.add('Marc');
    listC.add('Bill');
    listC.add('Kunal');
    listC.add('Marc');
    system.debug('list of candidates: '+listC);

    returnValue = listC.get(i);

    return returnValue;
    }
    public static void friendList(){
        List<String> friends = new List<String>();
        friends.add('sachin');
        friends.add('aearon');
        friends.add('erik');
        System.debug('before ' +friends);

        friends.sort();
        System.debug('after ' +friends);
    }
 
}