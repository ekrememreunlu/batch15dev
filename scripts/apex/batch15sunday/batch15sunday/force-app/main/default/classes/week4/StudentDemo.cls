public class StudentDemo {
    private String admissionNo;
    private String studentName;
    private Map<String, Decimal> subjectAndMarks;

    public StudentDemo(String admissionNo, String studentName, Map<String, Decimal> subjectAndMarks) {
        this.admissionNo = admissionNo;
        this.studentName = studentName;
        this.subjectAndMarks = subjectAndMarks;
    }

    public String getAdmissionNo() {
        return admissionNo;
    }

    public String getStudentName() {
        return studentName;
    }

    public Set<String> getSubjects() {
        return subjectAndMarks.keySet();
    }

    public List<Decimal> getMarks() {
        return new List<Decimal>(subjectAndMarks.values());
    }

    public Decimal getMarks(String sub) {
        Decimal marks = subjectAndMarks.get(sub);
        if (marks == null) {
            System.debug(studentName + ' did not study' + sub);
            return Decimal.valueOf(-1);
        }
        return marks;
    }

    public Decimal getTotalMarks() {
        Decimal totalMarks = 0;
        for (Decimal marks : subjectAndMarks.values()) {
            totalMarks += marks;
        }
        return totalMarks;
    }

    public Decimal getAverageMarks() {
        return getTotalMarks() / subjectAndMarks.size();
    }

    public Map<String, Decimal> getSubjectAndMarksAboveAverage() {
        Map<String, Decimal> aboveAverage = new Map<String, Decimal>();
        Decimal avg = getAverageMarks();
        for (String subject : subjectAndMarks.keySet()) {
            if (subjectAndMarks.get(subject) > avg) {
                aboveAverage.put(subject, subjectAndMarks.get(subject));
            }
        }
        return aboveAverage;
    }
}
