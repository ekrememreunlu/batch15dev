Map<String,Integer> marksObtainInMaths = new Map<String,Integer>{'0111CE112' => 40, '0111CE102' => 19, '0111CE100' => 33, '0111CE098' => 40};
marksObtainInMaths.put('0111CE099', 34);
marksObtainInMaths.put('0111CE094', 18);
system.debug(marksObtainInMaths);

System.debug('Student Roll Numbers: ' +marksObtainInMaths.keySet());
system.debug('All the Marks: ' +marksObtainInMaths.values());

Set<String> uniqueRollNumberSet = new Set<String>(marksObtainInMaths.keySet());
System.debug('Roll Number Set: ' + uniqueRollNumberSet);

List<Integer> marksObtainList = new List<Integer>(marksObtainInMaths.values());
System.debug('Marks Obtain List: ' + marksObtainList);

for(String eachRoll : marksObtainInMaths.keySet()){
    if(marksObtainInMaths.get(eachRoll) < 20){
        System.debug(eachRoll + ' is not qualified for next class');
    }
}