public class ValidateAddress {
    public void validateHomeAddress(){
        string houseName = '16 A';
        string streetName = 'Westerdijk';
        string cityName = 'Utrecht';
        string stateName = 'Pijlsweerd';
        string stateIsoCode = '3513EW';
        string countryName = 'The Netherlands';
        string countryIsoCode = '31';

        System.debug('Number of characters in the street name: ' + streetName.length());
        system.debug('Is The street name contains the house name?' + streetName.contains(houseName));
        system.debug('Is The street name contains the state ISO code?' + streetName.contains(stateIsoCode));

        system.debug('Country Iso code Upper Case ===> ' + countryISOCode.toUpperCase());
        system.debug('State Iso code Upper Case ===> ' + stateISOCode.toUpperCase());
        system.debug('Country Name code Upper Case ===> ' +countryName.toUpperCase());

        String fullAddress = houseName + ', ' + streetName + ', ' + cityName + ', ' + stateName + ', ' + countryName;
        System.debug('Full Address: ' + fullAddress);



    }
    
}