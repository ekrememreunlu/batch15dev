public class Employee2 {
    string name;
    decimal salary;
    public static decimal minSalary = 5000;

    public Employee2(string name, decimal salary) {
        this.name = name;
        this.salary = salary;
        
    }
    public Boolean isSalaryAboveMin(){
        Boolean check = (salary>minSalary);
        return check;
    }

    public static void setMinSalary(decimal amount){
        minSalary = amount;

        System.debug(minSalary);
      
    }
}