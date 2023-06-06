public class collections {
    public static string listaAssignment(integer input){
        List<String> LstMonth = new List<string>();
        string output_month = ' ';
        

        LstMonth.add('January');
        LstMonth.add('February');
        LstMonth.add('March');
        LstMonth.add('April');
        LstMonth.add('May');
        LstMonth.add('JUne');
        LstMonth.add('July');
        LstMonth.add('August');
        LstMonth.add('September');
        LstMonth.add('October');
        LstMonth.add('November');
        LstMonth.add('December');

        if (input < LstMonth.size() && input > 0) {
            output_month = LstMonth.get(input-1);
            
        } else {
            output_month = 'Not a valid month';
        }
        return output_month;
    }
}