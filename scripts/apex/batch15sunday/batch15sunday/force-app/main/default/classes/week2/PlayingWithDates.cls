public class PlayingWithDates {
    public void printDateOutput() {
        date dateToday = date.today();
        System.debug(dateToday);
        date future = date.newInstance(2789, 11, 5);
        System.debug(future);
        date past = date.newInstance(1459, 3, 4);
        System.debug(past);
        integer dayInt = 11;
        integer monthInt = 2;
        integer yearInt = 1986;

        Date customDate = Date.newInstance(yearInt, monthInt, dayInt);
        System.debug('New date: ' + customDate);

    }
    public string getMonthName(date inputDate){
        integer monthNumber = inputDate.month();
        string monthName ='';
        if (monthNumber == 1) {
            monthName = 'January';
        } else if (monthNumber == 2) {
            monthName = 'February';
        } else if (monthNumber == 3) {
            monthName = 'March';
        } else if (monthNumber == 4) {
            monthName = 'April';
        } else if (monthNumber == 5) {
            monthName = 'May';
        } else if (monthNumber == 6) {
            monthName = 'June';
        } else if (monthNumber == 7) {
            monthName = 'July';
        } else if (monthNumber == 8) {
            monthName = 'August';
        } else if (monthNumber == 9) {
            monthName = 'September';
        } else if (monthNumber == 10) {
            monthName = 'October';
        } else if (monthNumber == 11) {
            monthName = 'November';
        } else {
            monthName = 'December';
        }
        return monthName;
       
        
    }
}