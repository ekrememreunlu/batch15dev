Employee2 e1 = new Employee2('Johnny', 6000);
system.debug(e1.isSalaryAboveMin());

Employee2.minSalary = 6200;
system.debug(e1.isSalaryAboveMin());

Employee2.setMinSalary(5500);