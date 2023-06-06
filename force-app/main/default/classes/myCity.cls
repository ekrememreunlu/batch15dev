public class myCity {
    public void stringMethod(){

        string dev = 'I am Salesforce Developer';
        Boolean force = dev.contains('force');
        system.debug('Cümlemizde force kelimesi var mi? '+force);

        integer lnt = dev.length();
        System.debug('Cümledeki karakter sayisi: ' +lnt);

        string up = dev.toUpperCase();
        System.debug('Cümlenin yeni hali: ' +up);

        
    }
    
}