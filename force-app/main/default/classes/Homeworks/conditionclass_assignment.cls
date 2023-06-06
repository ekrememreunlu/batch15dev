public class conditionclass_assignment {
    public string Ifclassmethod(integer a){
        string output_Month = 'Not a valid Month';
        if (a==1) {
            output_Month ='January';
        } else if (a == 2){
            output_Month ='February';
        } else {
            output_Month ='Not a valid month';
        }

        return output_Month;
    }

    public string casemethod(string input){
        string output_Quarter = 'Enter a proper Month name';
        switch on input {
            when 'January', 'February', 'March' {
                input = 'Quarter 1';
            }
            when else {
                input = 'Not a valid Quarter';
            }
}
        return input;
        }
}