public class StudentMarksheet {
    string firstName;
    string lastName;
    Integer mathematics;
    integer english;
    integer chemistry;
    static string schoolName;

    public StudentMarksheet(){
        schoolName= 'Salesforce Public School';
    }
    public void setFirstName(string firstName){
        this.firstName = firstName;
    }
    public string getFirstName(){
        return firstName;
    }

    public void setLastName(string lastName){
        this.lastName = lastName;
    }
    public string getLastName(){
        return lastName;
    }
    public void setMarks(Integer math, integer eng, integer chem){
        this.mathematics = math;
        this.english = eng;
        this.chemistry = chem;
    }
    public void showMarksheet(){
        System.debug('Student Name: ' +firstName + ' ' +lastName);
        System.debug('School: ' +schoolName);
        System.debug('Mathematics: ' +mathematics);
        System.debug('English: ' +english);
        System.debug('Chemistry: ' + chemistry);
        integer totalMarks = mathematics + english + chemistry;
        System.debug('Total Marks: ' +totalMarks);
        if (totalMarks >=120) {
            System.debug('You are passed');
        }else{
            System.debug('You need to study more');
        }
    }

}