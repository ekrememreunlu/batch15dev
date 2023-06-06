List<String> sports = new List<String>();
if(sports.isEmpty()){
    System.debug('List is empty');
} else {
    System.debug('List is not empty');
}

sports.add('Football');
sports.add('Basketball');
sports.add('Tennis');
sports.add('Golf');

for(String sport : sports) {
    if(sport.toLowerCase().contains('ball')){
        System.debug(sport+' is played with Ball');
    } else {
        System.debug(sport+' is NOT played with ball');
    }
}

List<String> ballSports = new List<String>();
List<String> nonBallSports = new List<String>();

for(String sport : sports) {
    if(sport.toLowerCase().contains('ball')){
        ballSports.add(sport);
    } else {
        nonBallSports.add(sport);
    }
}

System.debug('Ball Sports: '+ballSports+', Size: '+ballSports.size());
System.debug('Non Ball Sports: '+nonBallSports+', Size: '+nonBallSports.size());

System.debug('Index of Tennis: '+sports.indexOf('Tennis'));


Set<String> operatingSystems = new Set<String>{'Windows', 'macOS'};

operatingSystems.addAll(new Set<String>{'Linux', 'Android', 'iOS', 'Chrome OS', 'FreeBSD', 'Ubuntu', 'Debian', 'Fedora'});

System.debug('Size of set: ' + operatingSystems.size());

String osString = 'Operating systems added in set are ';
for(String os : operatingSystems) {
    osString += '\'' + os + '\' & ';
}
osString = osString.substring(0, osString.length() - 3);
osString += '\nSize of FINAL STRING is ' + String.valueOf(osString.length());
System.debug(osString);


