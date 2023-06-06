public class Loops_assignment {
   public integer whileLoopMethod(integer n){
    integer i = 1;
    string printN = '';
    while (i <= n) {
        printN += i + ',';
        i++;
        
    } 
    printN = printN.subString(0, printN.length()-1); //remove last comma
    System.debug(printN);
    return i;
        
   }
   public integer printEven(integer n){
    string printStr = '';
    for(integer i = 1; i<=n; i++){
        integer remainder = math.mod(i, 2);
        if (remainder == 0) {
            printStr += i + ',';     
        }
    }
    printStr = printStr.substring(0, printStr.length() - 1);
    system.debug(printStr);
    return n;
   }

   public integer printPower(integer n){
    integer result = 1;
    for (integer i = 1; i<=n; i++) {
        result *= n;
    }
    System.debug(result);
    return result;
   }

   
}