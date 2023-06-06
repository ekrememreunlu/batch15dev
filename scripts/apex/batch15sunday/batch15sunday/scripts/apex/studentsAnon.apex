Students s1 = new Students();
s1.setFirstName('Emre');
s1.setLastName('Unlu');
s1.setClassYear(2004);
s1.setMarks(90);
s1.setMajor('Law');
String finalGrade1 = s1.generateReport();
System.debug('Final Grade of ' + s1.getFirstName() + ' is ' + finalGrade1);

Students s2 = new Students();
s2.setFirstName('Lucifer');
s2.setLastName('Morningstar');
s2.setClassYear(1810);
s2.setMarks(10001);
s2.setMajor('la');
String finalGrade2 = s2.generateReport();
System.debug('Final Grade of ' + s2.getFirstName() + ' is ' + finalGrade2);