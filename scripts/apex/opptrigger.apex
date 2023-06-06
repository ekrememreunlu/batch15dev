opportunity opp = new opportunity();
opp.name = 'trigger opp';
opp.stagename = 'prospecting';
opp.closedate = date.today().addDays(60);
insert opp;

opp.name += ' update';
update opp;