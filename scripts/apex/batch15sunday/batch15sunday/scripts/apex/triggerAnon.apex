Opportunity opp = new Opportunity();
opp.Name = 'test 123';
opp.StageName = 'Prospecting';
opp.CloseDate = Date.newInstance(2023, 5, 3);

insert opp;

Opportunity opp2 = [SELECT Id, Name, StageName, CloseDate FROM Opportunity WHERE Id = :opp.Id];
opp2.Name = 'test 1234';
opp2.StageName = 'Prospecting';
opp2.CloseDate = Date.newInstance(2023, 8, 3);

update opp;



