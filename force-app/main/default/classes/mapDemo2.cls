public with sharing class methodsDemo {
    public string newMessage(string name) {
        System.debug('Hi ' +name + ', welcome to the world of apex');
        return name;

    }

    public string returnMessage(string name){
        string str = 'Hey ' + name + ', nice to meet yo buddy';
       

        return str;

    }
}