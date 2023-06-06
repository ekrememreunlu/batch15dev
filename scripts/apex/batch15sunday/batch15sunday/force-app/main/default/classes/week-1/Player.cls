public class Player {
    public void playing(){
        String player1Name = 'Aboubakar';
        String player2Name = 'Ghezzal';
        String player3Name = 'Cenk';
        String player4Name = 'Salih';
        String player5Name = 'Gedson';

        System.debug('Player 1 Name: ' + player1Name);
        System.debug('Player 2 Name: ' + player2Name);
        System.debug('Player 3 Name: ' + player3Name);
        System.debug('Player 4 Name: ' + player4Name);
        System.debug('Player 5 Name: ' + player5Name);

        System.debug('Player 1 Name Length: ' + player1Name.length());
        System.debug('Player 2 Name Length: ' + player2Name.length());
        System.debug('Player 3 Name Length: ' + player3Name.length());
        System.debug('Player 4 Name Length: ' + player4Name.length());
        System.debug('Player 5 Name Length: ' + player5Name.length());
        
        System.debug('Player 1 Name in Capital Letters: ' + player1Name.toUpperCase());
        System.debug('Player 3 Name in Capital Letters: ' + player3Name.toUpperCase());
    }
}