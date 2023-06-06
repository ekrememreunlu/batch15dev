list<lead> leadToInsertList = new list<lead>();
for (integer i = 0; i < 5; i++){
    lead newLead = new Lead();
    newLead.lastname = 'lead trigger ' +i;
    newLead.company = 'Company ' +i;
    leadToInsertList.add(newLead);
}
insert leadToInsertList;
system.debug('----');

for(Lead eachLead:leadToInsertList){
    eachLead.description = 'Field Updated from anonymous';

}
update leadToInsertList;