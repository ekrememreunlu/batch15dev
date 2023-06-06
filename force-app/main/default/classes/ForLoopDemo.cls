public class ForLoopDemo {
    //print Hello 10 times
    public void print_Hello(){
        //traditional for loop OR for i loop
        
        for(integer i = 1; i <= 10; i++){
            system.debug('hello');
        }
    }

    //0 to n-1
    public void print_N_numbers(integer n){
        string printStr = '';
        for (Integer i = 0; i < n; i++) {
            //system.debug(i);
            printStr += i + ',';
        }
        system.debug(printStr);
        
    }


    public void print_N_numbers2(integer n){
        string s = 'this';
        s += ' is a string';
        for (Integer i = 0; i < n; i++) {
            s += i;
            system.debug(s);
        }
        system.debug(s);//will this work?
        
        
    }
    public void print_Odd_Numbers(integer startInt, integer endInt){
        for(integer i = startInt; i<endInt; i++){
            integer remainder =math.mod(i, 2);
            if (remainder ==1) {
                System.debug(i);
            }
        }

    }

    public void forLoopExample(){
        Integer no = 5;
        Integer fact =1;
        for(integer i=1; i<=no; i++){
            fact *=i;
        }
        System.debug('factorial of ' +no+ ' is '+ fact);
    }

}