public class Datetime_Assignment2 {
    public void diffofDate() {
        date varTomorrowDate = date.newInstance(2023, 04, 06);
        System.debug('Tomorrow\'s date: ' +varTomorrowDate);

        date varTodaysDate = date.newInstance(2023, 04, 05);
        System.debug('Today\'s date: ' +varTodaysDate);

        Integer numberDays = varTodaysDate.daysBetween(varTomorrowDate);
        System.debug('days difference: ' +numberDays);

    }
    public void timeCheck() {
        Datetime varTomorrowDatetime = Datetime.newInstance(2023, 01, 11, 7, 0, 0);
        Datetime var10DaysDatetime  = Datetime.newInstanceGmt(2023, 01, 21, 9, 0, 0);
        Long varDatetimeLong  = 12339874361L;
        DateTime dt = DateTime.newInstance(varDatetimeLong);
        System.debug('Datetime of ' + varDatetimeLong + ' seconds is ' + dt);
        Datetime dateTimeAfter7Days = varTomorrowDatetime.addDays(7);
        System.debug('Datetime after adding 7 days in ' + varTomorrowDatetime + ' is ' + 
dateTimeAfter7Days);
        Datetime dateTimeAfter10Days = var10DaysDatetime.addDays(10);
        System.debug('Datetime after adding 10 days in ' + var10DaysDatetime + ' is ' + 
dateTimeAfter10Days);

      

    }
}