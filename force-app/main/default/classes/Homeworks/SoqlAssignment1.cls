public class SoqlAssignment1 {
    
    public static List<Employee__c> topEmployees() {
        List<Employee__c> empList = [select Id, Name, first_Name__c, Salary__c From Employee__c Order by Salary__c desc LIMIT 5];
        return empList;
    }
    
    public static void mostPopulatedCountry() {
        List<AggregateResult> ListCntry = [Select Country__c, count(Id)  From Employee__c Group By Country__c Order By count(id) Desc Limit 1];
        for (AggregateResult cn : ListCntry) {
            System.debug('Most populated country is ' +cn.get('country__c'));
        }
        
        }
        
}
    
