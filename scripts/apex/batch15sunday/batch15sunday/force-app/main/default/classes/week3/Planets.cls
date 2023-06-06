public class Planets {
    public string name;
    integer planetNumber;
    integer numMoons;

    public Planets(){
        this.name = 'Unknown';
        this.planetNumber = 0;
        this.numMoons = 0;
    }
    public Planets(string name, integer planetNumber, integer numMoons){
        this.name = name;
        this.planetNumber = planetNumber;
        this.numMoons = numMoons;
    }
    public Planets(string name){
        this(name,0,0);
    }
    public void details(){
        System.debug('name: ' +name);
        System.debug('planet number: ' +planetNumber);
        System.debug('number of moons' + numMoons);
    }
}