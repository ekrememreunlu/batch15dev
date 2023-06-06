List<Opportunity> OpportunityList = new List<Opportunity>();
for (integer i = 1; i<2; i++){
    Opportunity newOpportunity = new Opportunity();
    newOpportunity.name = 'New opps';
    newOpportunity.closeDate = date.today().addDays(30);
    newOpportunity.amount = 35000;
    newOpportunity.stagename= 'prospecting';
    OpportunityList.add(newOpportunity);
}
insert OpportunityList;




List<Case> caseList = new List<Case>();
for (integer i = 1; i<=2; i++){
    case newCase = new Case();
    newCase.status = 'New';
    newCase.origin = 'Web';
    caseList.add(newCase);
}
insert caseList;