public class DateTimeMethodsDemo {
    public void calculateAgeInMonths() {
        date todayDate = date.today();

        date emreBirthDate = date.newInstance(1986, 2, 11);

        integer ageInMonths = emreBirthDate.monthsBetween(todayDate);
        System.debug('Emre age in months is ' +ageInMonths);

    }

    public void calculateAgeInDays(){
        date emreBirthDate = date.newInstance(1986, 2, 11);
        date todayDate = date.today();
        integer ageIndays = emreBirthDate.daysBetween(todayDate);
        System.debug('age in days = ' + ageIndays);


    }

    public void subscriptionEndDate(){
        date todayDate = date.today();

        date endDate = todayDate.addDays(1000);
        System.debug('subscription End Date: ' + endDate);

        //END date is today. 
        //subs was done for 1000 days
        //what is the start date?
        date newEndDate = date.today();

        date newStartDate = newEndDate.addDays(-1000);
        system.debug('new start date => ' + newStartDate);

        //to just get YEAR component from DATE
        integer newSDYear = newStartDate.year();
        //to get MONTH component from DATE use .month()
        integer newSDMOnth = newStartDate.month();
        system.debug('year of new start date is ' + newSDYear);
        system.debug('month of new start date is ' + newSDMOnth);


    }

    public void offerEndDateTime(){
        //current date time
        datetime offerStart = datetime.now();

        datetime offerEnd = offerStart.addHours(51);
        System.debug('offer end date is ' + offerEnd);

    }
}