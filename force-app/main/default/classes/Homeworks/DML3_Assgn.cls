public with sharing class DML3_Assgn {
    public static void createBulkContacts() {
        list<contact> conList = new list<contact>();
        for (Integer i = 0; i < 4; i++) {
            contact c1 = new contact();
            c1.firstname = 'Mark';
            c1.lastname = 'Ruffalo';
            conList.add(c1);
        }
        for (Integer i = 0; i < 3; i++) {
            contact c2 = new contact();
            c2.firstname = 'Chris';
            c2.lastname = 'Hemsworth';
            conList.add(c2);
        }
        for (Integer i = 0; i < 3; i++) {
            contact c3 = new contact();
            c3.firstname = 'Scarlett';
            c3.lastname = 'Johansson';
            conList.add(c3);
        }
        System.debug(conList.size());
        insert conList;
    }
    public static Integer updateBulkContacts(String lastName, String phoneNumber) {
        List<Contact> contactsToUpdate = [select Id, Phone from Contact where LastName = :lastName];
        for (Contact c : contactsToUpdate) {
            c.Phone = phoneNumber;
        }
        update contactsToUpdate;
        return contactsToUpdate.size();
    }

}