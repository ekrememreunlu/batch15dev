List<employee__c> listemp = SoqlAssignment1.topEmployees();
for(employee__c emp : listemp){
    system.debug(emp.first_name__c +' has a salary of ' +emp.salary__c);
}
SoqlAssignment1.mostPopulatedCountry();