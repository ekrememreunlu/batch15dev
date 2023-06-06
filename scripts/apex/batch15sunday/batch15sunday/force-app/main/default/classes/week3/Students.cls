public class Students {
    private String firstName;
    private String lastName;
    private integer classYear;
    private integer marks;
    private String major;

    public Students() {
        this.firstName = '';
        this.lastName = '';
        this.classYear = 0;
        this.marks = -1;
        this.major = 'NA';
    }

    public Students(String firstName, String lastName, integer classYear, integer marks, String major) {
        this.firstName = firstName;
        this.lastName = lastName;
        if (classYear >= 1923 && classYear <= 2023) {
            this.classYear = classYear;
        } else {
            System.debug('No such class year exists for us');
            this.classYear = 0;
        }
        if (marks >= 0 && marks <= 100) {
            this.marks = marks;
        } else {
            System.debug('Please give proper marks. This is no joke.');
            this.marks = -1;
        }
        if (major.length() > 2) {
            this.major = major;
        } else {
            System.debug('There is no such major or stream in our uni');
            this.major = 'NA';
        }
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public integer getClassYear() {
        return classYear;
    }

    public void setClassYear(integer classYear) {
        if (classYear >= 1923 && classYear <= 2023) {
            this.classYear = classYear;
        } else {
            System.debug('No such class year exists for us');
            this.classYear = 0;
        }
    }

    public integer getMarks() {
        return marks;
    }

    public void setMarks(integer marks) {
        if (marks >= 0 && marks <= 100) {
            this.marks = marks;
        } else {
            System.debug('Please give proper marks. This is no joke.');
            this.marks = -1;
        }
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        if (major.length() > 2) {
            this.major = major;
        } else {
            System.debug('There is no such major or stream in our uni');
            this.major = 'NA';
        }
    }

    public String generateReport() {
        String finalGrade = 'X';
        if (marks >= 90) {
            finalGrade = 'A';
        } else if (marks >= 80) {
            finalGrade = 'B';
        } else if (marks >= 70) {
            finalGrade = 'C';
        } else if (marks >= 60) {
            finalGrade = 'D';
        } else if (marks < 60 && marks >= 0) {
            finalGrade = 'F';
        }
        System.debug('Report Generated for ' + firstName + ' ' + lastName + ' of ' + classYear + ' - ' + major);
        return finalGrade;
    }
}
