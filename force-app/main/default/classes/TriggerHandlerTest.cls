@isTest
public with sharing class TriggerHandlerTest {
    @TestSetup
    static void makeDataLead(){
        List<Lead> listLead = new List<Lead>();
        for (Integer i = 0; i < 1000; i++) {
            lead l = new lead();
            l.lastName = 'weekday';
            l.company = 'Calend';
            listLead.add(l);
        }
        insert listLead;
    }
}