Set<String> fruitsSet = new Set<String>{'Apple', 'Banana', 'Orange', 'Grapes'};

System.debug('Fruits in fruitsSet:');
for(String fruit : fruitsSet) {
    System.debug(fruit);
}

System.debug('Size of fruitsSet: ' + fruitsSet.size());

fruitsSet.add('Apricot');
System.debug('Fruits in fruitsSet after adding Apricot:');
for(String fruit : fruitsSet) {
    System.debug(fruit);
}

if(fruitsSet.contains('Apricot')) {
    System.debug('fruitsSet contains Apricot');
} else {
    System.debug('fruitsSet does not contain Apricot');
}

if(fruitsSet.isEmpty()) {
    System.debug('fruitsSet is empty');
} else {
    System.debug('fruitsSet is not empty');
}

// 2nd question

List<Decimal> values = new List<Decimal>{1.2, 3.4, 5.6};
Decimal sum = OperationsHelper.sum(values);
Decimal average = OperationsHelper.average(values);
Decimal highest = OperationsHelper.highest(values);
Decimal lowest = OperationsHelper.lowest(values);
System.debug('Sum: ' + sum);
System.debug('Average: ' + average);
System.debug('Highest: ' + highest);
System.debug('Lowest: ' + lowest);

/// Question 3

Map<String, Decimal> currISOCodeAndExchangeRateMap = new Map<String, Decimal>{
    'AUD' => 0.73,
    'CAD' => 0.78,
    'EUR' => 1.13,
    'NZD' => 0.68,
    'INR' => 0.013
};

System.debug('Conversion rate for EUR: ' + currISOCodeAndExchangeRateMap.get('EUR'));

System.debug('Conversion rate for SAD: ' + currISOCodeAndExchangeRateMap.containsKey('SAD'));

List<String> isoCodesGreaterThanOne = new List<String>();
List<String> isoCodesLessThanOne = new List<String>();

for(String isoCode : currISOCodeAndExchangeRateMap.keySet()) {
    if(currISOCodeAndExchangeRateMap.get(isoCode) >= 1) {
        isoCodesGreaterThanOne.add(isoCode);
    } else {
        isoCodesLessThanOne.add(isoCode);
    }
}

System.debug('ISO codes with conversion rate >= 1: ' + isoCodesGreaterThanOne);
System.debug('ISO codes with conversion rate < 1: ' + isoCodesLessThanOne);


//question 4

StudentDemo sd1 = new StudentDemo('1001', 'Peter Parker', new Map<String, Decimal>{
    'math' => 75.5,
    'physics' => 56.0,
    'english' => 80.5,
    'chemistry' => 70.0,
    'computer' => 58.5
});

System.debug('Admission Code 1: ' + sd1.getAdmissionNo());
System.debug('Student Name 1: ' + sd1.getStudentName());
System.debug('Subjects 1: ' + sd1.getSubjects());
System.debug('Marks 1: ' + sd1.getMarks());
System.debug('Marks of english: ' + sd1.getMarks('english'));
System.debug('Marks of physics: ' + sd1.getMarks('physics'));
System.debug(sd1.getStudentName() + ' did not study Hindi');
System.debug('Marks of Hindi: ' + sd1.getMarks('Hindi'));
System.debug('Total Marks 1: ' + sd1.getTotalMarks());
System.debug('Average Mark 1: ' + sd1.getAverageMarks());
System.debug('Above average subject and marks: ' + sd1.getSubjectAndMarksAboveAverage());

StudentDemo sd2 = new StudentDemo('1005', 'Cleopatra', new Map<String, Decimal>{
    'greek' => 70.5,
    'egyptian' => 51.0,
    'arabic' => 60.5,
    'hebrew' => 60.0,
    'philosophy' => 68.5
});

System.debug('Admission Code 2: ' + sd2.getAdmissionNo());
System.debug('Student Name 2: ' + sd2.getStudentName());
System.debug('Subjects 2: ' + sd2.getSubjects());

//question 6

Map<String, Integer> StudentRank = new Map<String, Integer>();
StudentRank.put('Emre', 3);
StudentRank.put('Merve', 4);
StudentRank.put('Charlie', 2);
StudentRank.put('Dave', 1);

for(String name : StudentRank.keySet()) {
    System.debug(name);
}

for(String name : StudentRank.keySet()) {
    System.debug('Student Name : ' + name + ' and Rank : ' + StudentRank.get(name));
}
