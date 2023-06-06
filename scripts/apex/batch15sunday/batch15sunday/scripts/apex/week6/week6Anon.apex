<system.debug(AccConAndOppOperations.getAllAccounts());
system.debug(AccConAndOppOperations.findOpportunities('Web', 'closed won'));
AccConAndOppOperations.createAccount('Soft', 85000, 'Customer - direct');
system.debug(AccConAndOppOperations.getAccountsByOpptyStage('closed won'));

