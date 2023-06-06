public class CheckDatatypes {
    public void methodBoolean() {
        Boolean checkBoolean = true;
        system.debug(checkBoolean);

    }
    public void methodInteger(){
        integer varfirst = 1;
        integer varsecond = 2;
        system.debug(varfirst);
        system.debug(varsecond);
    
    }
    public void stringMethod(){
        string varname ='name';
        string var2name ='Emre';
        system.debug(varname +': ' + var2name);
    
    }
    public void methodID(){
        Id checkId = '0030900001lldElAAI';
        system.debug(checkId);
    }
    public void methodDouble(){
        Decimal varfirst = 1.23;
        Double varsecond = 209.764;
        system.debug(varfirst);
        System.debug(varsecond);
    }
}