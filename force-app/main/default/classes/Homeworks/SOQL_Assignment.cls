public class SOQL_Assignment {
    public static void soql_WhereClause() {
        List<Contact> lstcontact = [Select id from contact where name like 'A%'];
        System.debug(lstcontact);
        System.debug('Size of list: ' +lstcontact.size());
    }
    public static void soql_FromMethod(){
        List<Contact> lstcontact = [Select lastname, phone from contact];
        for (Contact eachCont : lstcontact) {
            System.debug('Last name: ' +eachCont.lastname);
            System.debug('Phone: ' +eachCont.phone);
            System.debug('==============================================');
        }

    }
}