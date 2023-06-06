public class String_Assignment {
    public void stringAssignment(){
        String localString = 'Thanks for the session on the string';
        system.debug(localString);

        integer lengthString = localString.length();
        system.debug('Lenght of the above sentence is ' + lengthString);

        string upperLocal = localString.toUpperCase();
        system.debug('Uppercase of localString ====> ' + upperLocal);

        Boolean checkString = localString.contains('session');
        system.debug(checkString);

        Boolean checkString2 = localString.contains('sessions');
        system.debug(checkString2);

        Boolean checkString3 = localString.contains('SESSION');
        system.debug(checkString3);


    }
    
}