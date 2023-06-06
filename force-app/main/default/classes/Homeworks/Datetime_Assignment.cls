public class Datetime_Assignment {
    public void dateMethods() {
        Date varDate = date.newInstance(2001, 01, 01);
        System.debug(varDate);

    }
    public void  timeMethods(){
        Time varTime = time.newInstance(06, 21, 29, 00);
        System.debug(varTime);
    }

    public void datetimeMethods(){
        Datetime varDatetime = Datetime.newInstance(2001, 01, 01, 06, 21, 29);
        System.debug(varDatetime);
    }
}